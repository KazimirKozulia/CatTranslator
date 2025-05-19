//
//  LimitedOfferScreen.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 28.04.2025.
//
import SwiftUI
import ComposableArchitecture

@Reducer
struct LimitedOffer {
    
    @ObservableState
    struct State: Equatable {
        var crossButton = MainIconButton.State(buttonImage: .cross)
        var continueButton = MainButton.State(buttonText: Localizable.ContinueButton.text, width: 300)
        var privacyButtons = MainTextButton.State(buttonText: Localizable.BottomButtonPrivacy.text, textSize: 16, textColor: .black, underlineColor: .clear)
        var restoreButtons = MainTextButton.State(buttonText: Localizable.BottomButtonRestore.text, textSize: 16, textColor: .black, underlineColor: .clear)
        var termsButtons = MainTextButton.State(buttonText: Localizable.BottomButtonTerms.text, textSize: 16, textColor: .black, underlineColor: .clear)
        
        @Shared(.offerExpireDate) var offerExpireDateInterval = Date().timeIntervalSinceReferenceDate + 1500
        
        var offerExpireDate: Date {
            .init(timeIntervalSinceReferenceDate: offerExpireDateInterval)
        }
        
        var offerExpireDateString = "00:00:00"
    }
    
    enum Action {
        case crossButton(MainIconButton.Action)
        case continueButton(MainButton.Action)
        case privacyButtons(MainTextButton.Action)
        case restoreButtons(MainTextButton.Action)
        case termsButtons(MainTextButton.Action)
        case onAppear
        case tick
    }
    
    enum CancelID { case stopClock }
    
    @Dependency(\.continuousClock) var continuousClock
    
    var body: some ReducerOf<LimitedOffer> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                return .merge(
                    .send(.tick),
                    .cancel(id: CancelID.stopClock),
                    .run { send in
                        for await _ in self.continuousClock.timer(interval: .seconds(1)) {
                            await send(.tick)
                        }
                    })
                
            case .tick:
                let currentDate = Date()
                if state.offerExpireDate > currentDate {
                    let components = Calendar.current.dateComponents([.hour, .minute, .second], from: currentDate, to: state.offerExpireDate)
                    guard let hours = components.hour,
                          let minutes = components.minute,
                          let seconds = components.second else { return .none}
                    state.offerExpireDateString = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
                } else {
                    state.$offerExpireDateInterval.withLock{_ in
                        Date().timeIntervalSinceReferenceDate + 1500
                    }
                }
                return .none
            case .crossButton:
                return .none
            case .continueButton:
                return .none
            case .privacyButtons:
                return .none
            case .restoreButtons:
                return .none
            case .termsButtons:
                return .none
            }
        }
    }
}

struct LimitedOfferScreen: View {
    let store: StoreOf<LimitedOffer>
    
    var body: some View {
        VStack {
            HStack{
                MainIconButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
                
                Spacer()
            } .padding(.horizontal, 30)
            
            Text(Localizable.LimitedOfferScreen.mainTitle)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 32))
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
                .multilineTextAlignment(.center)
            
            Text(Localizable.LimitedOfferScreen.subTitle)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 32))
                .foregroundStyle(Color.gradientLeft)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            VStack{
                Image(.offerCat)
                
                Text(Localizable.LimitedOfferScreen.getFullAccess)
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 32))
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
                    .multilineTextAlignment(.center)
                
                Text(Localizable.LimitedOfferScreen.newPrice)
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 24))
                    .foregroundStyle(Color.gradientLeft)
                    .multilineTextAlignment(.center)
                
                Text(Localizable.LimitedOfferScreen.oldPrice)
                    .font(Fonts.Roboto.lightItalic.swiftUIFont(size: 18))
                    .foregroundStyle(Color.gradientLeft)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            Text(Localizable.LimitedOfferScreen.endOffer)
            
            MainButtonView(store: store.scope(state: \.continueButton, action: \.continueButton))
                .buttonStyle(OrangeButton())
            
            HStack{
                MainTextButtonView(store: store.scope(state: \.privacyButtons, action: \.privacyButtons))
                
                Spacer()
                
                MainTextButtonView(store: store.scope(state: \.restoreButtons, action: \.restoreButtons))
                
                Spacer()
                
                MainTextButtonView(store: store.scope(state: \.termsButtons, action: \.termsButtons))
            } .padding()
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(.mainBackground)
    }
}

#Preview {
    LimitedOfferScreen(
        store: StoreOf<LimitedOffer>(
            initialState: LimitedOffer.State(),
            reducer: { LimitedOffer() }
        )
    )
}


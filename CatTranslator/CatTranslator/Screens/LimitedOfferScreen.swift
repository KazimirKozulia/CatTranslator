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
    }
    
    enum Action {
        case crossButton(MainIconButton.Action)
        case continueButton(MainButton.Action)
        case privacyButtons(MainTextButton.Action)
        case restoreButtons(MainTextButton.Action)
        case termsButtons(MainTextButton.Action)
    }
    
    var body: some ReducerOf<LimitedOffer> {
        Reduce { state, action in
            switch action {
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
            
            Text("Limited offer")
                .font(Fonts.Roboto.medium.swiftUIFont(size: 32))
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
                .multilineTextAlignment(.center)

            Text("Unlock all features")
                .font(Fonts.Roboto.medium.swiftUIFont(size: 32))
                .foregroundStyle(Color.gradientLeft)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            VStack{
                Image(.offerCat)
                
                Text("Get Full ACCESS")
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 32))
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
                    .multilineTextAlignment(.center)
                
                Text("Only $14,99")
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 24))
                    .foregroundStyle(Color.gradientLeft)
                    .multilineTextAlignment(.center)
                
                Text("Old prise $14,99")
                    .font(Fonts.Roboto.lightItalic.swiftUIFont(size: 18))
                    .foregroundStyle(Color.gradientLeft)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            Text("Until the end of the offer left")
            
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


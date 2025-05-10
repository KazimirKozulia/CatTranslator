//
//  Onboarding.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//
import SwiftUI
import ComposableArchitecture

enum OnboardingType {
    case first
    case second
    case third
    case fourth
}

@Reducer
struct Onboarding {
    
    @ObservableState
    struct State: Equatable {
        let myType: OnboardingType
        var privacyButtons = MainTextButton.State(buttonText: Localizable.BottomButtonPrivacy.text, textSize: 16, textColor: .black, underlineColor: .clear)
        var restoreButtons = MainTextButton.State(buttonText: Localizable.BottomButtonRestore.text, textSize: 16, textColor: .black, underlineColor: .clear)
        var termsButtons = MainTextButton.State(buttonText: Localizable.BottomButtonTerms.text, textSize: 16, textColor: .black, underlineColor: .clear)
        var continueButton = MainButton.State(buttonText: Localizable.ContinueButton.text, width: 300)
        var backCrossButton = MainIconButton.State(buttonImage: .cross)
        
        var mainTitle: String {
            switch myType {
            case .first:
                Localizable.FirstOnboardingScreen.mainTitle
            case .second:
                Localizable.SecondOnboardingScreen.mainTitle
            case .third:
                Localizable.ThirtOnboardingScreen.mainTitle
            case .fourth:
                Localizable.FourthOnboardingScreen.mainTitle
            }
        }
        
        var subTitle: String {
            switch myType{
            case .first:
                Localizable.FirstOnboardingScreen.subTitle
            case .second:
                Localizable.SecondOnboardingScreen.subTitle
            case .third:
                Localizable.ThirtOnboardingScreen.subTitle
            case .fourth:
                ""
            }
        }
        
        var freeText: String {
            switch myType {
            case .first:
                ""
            case .second:
                ""
            case .third:
                ""
            case .fourth:
                Localizable.FourthOnboardingScreen.freeButton
            }
        }
    }
    
    enum Action {
        case privacyButtons(MainTextButton.Action)
        case restoreButtons(MainTextButton.Action)
        case termsButtons(MainTextButton.Action)
        case continueButton(MainButton.Action)
        case backCrossButton(MainIconButton.Action)
    }
    
    var body: some ReducerOf<Onboarding> {
        Reduce {state, action in
            switch action {
            case .continueButton(.buttonTapped):
                switch state.myType {
                case .first:
                    return .none
                case .second:
                    return .none
                case .third:
                    return .none
//                    state.$isOnboardingPassed.withLock{
//                        $0 = true
//                    }
                case .fourth:
                    return .none
                }
            case .privacyButtons:
                return .none
            case .restoreButtons:
                return .none
            case .termsButtons:
                return .none
            case .backCrossButton(_):
                return .none
            }
        }
//        Scope(state: \.bottomButtons, action: \.bottomButtons) {
//            BottomButtons()
//        }
    }
}

struct OnboardingScreens: View {
    let store: StoreOf<Onboarding>
    
    var body: some View {
        VStack{
            HStack{
                MainIconButtonView(store: store.scope(state: \.backCrossButton, action: \.backCrossButton))
                Spacer()
            }.padding(.horizontal, 30)
            
            Text(store.mainTitle)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 35))
                .multilineTextAlignment(.center)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
            
            Spacer()
            
            Text(store.subTitle)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 28))
                .multilineTextAlignment(.center)
                .foregroundStyle(.gradientLeft)
            
            Spacer()
            
            MainButtonView(store: store.scope(state: \.continueButton, action: \.continueButton))
                .buttonStyle(OrangeButton())
            
            Spacer()
            
            Text(store.freeText)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 20))
                .multilineTextAlignment(.center)
                .foregroundStyle(.black)
            
            Spacer()
            
            HStack{
                MainTextButtonView(store: store.scope(state: \.privacyButtons, action: \.privacyButtons))
                
                Spacer()
                
                MainTextButtonView(store: store.scope(state: \.restoreButtons, action: \.restoreButtons))
                
                Spacer()
                
                MainTextButtonView(store: store.scope(state: \.termsButtons, action: \.termsButtons))
            } .padding(.horizontal)
        }
        .background(.mainBackground)
    }
}

#Preview {
    OnboardingScreens(
        store: StoreOf<Onboarding>(
            initialState: Onboarding.State(myType: .second),
            reducer: { Onboarding() }
        )
    )
    
}





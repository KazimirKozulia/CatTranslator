//
//  SettingScreen.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 24.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Setting {
    
    struct State: Equatable {
        var ouchButton = MainTextButton.State(buttonText: Localizable.SettingScreen.IllustrationButton.text, textSize: 16, textColor: .gradientLeft, underlineColor: .gradientLeft)
        var payButton = MainTextButton.State(buttonText: "$1.99", textSize: 12, textColor: .gradientLeft, underlineColor: .clear)
        var addCatButton = MainButton.State(buttonText: Localizable.AddCatButton.text, width: .infinity)
        var speciaButton = MainButton.State(buttonText: Localizable.SettingSpecialButtons.text, width: 24)
        var termsButton = MainButton.State(buttonText: Localizable.SettingTermsButtons.text, width: 24)
        var privacyButton = MainButton.State(buttonText: Localizable.SettingPrivacyButtons.text, width: 24)
    }
    
    enum Action {
        case ouchButton(MainTextButton.Action)
        case payButton(MainTextButton.Action)
        case addCatButton(MainButton.Action)
        case speciaButton(MainButton.Action)
        case termsButton(MainButton.Action)
        case privacyButton(MainButton.Action)
        
    }
    
    var body: some ReducerOf<Setting> {
        Reduce { state, action in
            switch action {
            case .addCatButton:
                return .none
            case .speciaButton:
                return .none
            case .termsButton:
                return .none
            case .privacyButton:
                return .none
            case .payButton:
                return .none
            case .ouchButton:
                return .none
            }
            
        }
    }
}

struct SettingScreen: View {
    let store: StoreOf<Setting>
    var body: some View {
        VStack {
            ZStack{
                Canvas {_,_ in}
                    .frame(width: .infinity, height: 110)
                    .border(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
                    .background(LinearGradient(gradient: Gradient(colors: [.mainBackground, .gradientLeft]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(20)
                    .padding()
                HStack {
                    VStack{
                        Text(Localizable.SubscriptionPlans.text)
                            .foregroundStyle(.gradientLeft)
                            .padding(.leading, 30)
                            .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                    }
                    HStack(alignment: .firstTextBaseline){
                        Group {
                            Text( Localizable.SubscriptionPlans.text)
                            Text("only")
                        }
                        .foregroundStyle(.black)
                        .padding(.leading, 30)
                        .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                        
                        MainTextButtonView(store: store.scope(state: \.payButton, action: \.payButton))
                        
                        Text("per month")
                            .foregroundStyle(.black)
                            .padding(.leading, 30)
                            .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                    }
                }
                
                Spacer()
                
                Image(.coolCat)
                    .resizable()
                    .padding(.trailing, 20)
                //                        .frame(width: 170, height: 150)
            }
            
            Spacer()
            
            MainButtonView (store: store.scope(state: \.addCatButton, action: \.addCatButton ))
                .padding(.horizontal, 20)
            
            Spacer()
            
            VStack {
                MainButtonView (store: store.scope(state: \.speciaButton, action: \.speciaButton ))
                
                Spacer()
                
                MainButtonView (store: store.scope(state: \.termsButton, action: \.termsButton ))
                
                Spacer()
                
                
                MainButtonView (store: store.scope(state: \.privacyButton, action: \.privacyButton ))
            }
            
            HStack{
                Text(Localizable.SettingScreen.Illustration.text)
                    .foregroundStyle(.gradientLeft)
                    .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                MainTextButtonView(store: store.scope(state: \.ouchButton, action: \.ouchButton))
            }
        }
    }
}


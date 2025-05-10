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
        var crossButton = MainIconButton.State(buttonImage: .cross)
        var payButton = MainTextButton.State(buttonText: "$1.99", textSize: 12, textColor: .gradientLeft, underlineColor: .clear)
        var addCatButton = MainButton.State(buttonText: Localizable.AddCatButton.text, width: .infinity)
        var speciaButton = MainButton.State(buttonText: Localizable.SettingSpecialButtons.text, width: .infinity)
        var termsButton = MainButton.State(buttonText: Localizable.SettingTermsButtons.text, width: .infinity)
        var privacyButton = MainButton.State(buttonText: Localizable.SettingPrivacyButtons.text, width: .infinity)
    }
    
    enum Action {
        case crossButton(MainIconButton.Action)
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
            case .crossButton:
                return .none
            }
            
        }
    }
}

struct SettingScreen: View {
    let store: StoreOf<Setting>
    var body: some View {
        
        VStack {
            HStack{
                Spacer()

                MainIconButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
                
            } .padding(.horizontal, 30)
            
            ZStack{
                Canvas { _, _ in }
                    .frame(width: .infinity, height: 110)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [.mainBackground, .gradientLeft]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(
                                LinearGradient(
                                    gradient: Gradient(colors: [.gradientLeft, .gradientRight]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                ),
                                lineWidth: 2
                            )
                    )
                    .padding()
                    .padding(.bottom, 30)
                
                HStack{
                    VStack(alignment: .leading){
                        Text(Localizable.SubscriptionPlans.text)
                            .foregroundStyle(.gradientLeft)
                            .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                        
                        Text(Localizable.SubscriptionPlans.text)
                            .foregroundStyle(.black)
                            .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                        
                        HStack{
                            
                            Text("Only")
                                .foregroundStyle(.black)
                                .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                            
                            MainTextButtonView(store: store.scope(state: \.payButton, action: \.payButton))
                            
                            Text("per month")
                                .foregroundStyle(.black)
                                .font(Fonts.Roboto.light.swiftUIFont(size: 15))
                        }
                    } .padding(.bottom, 30)
                    
                    
                    Spacer()
                    Image(.coolCat)
                        .padding(.trailing, 30)
                }.padding(.leading, 30)

                
                //                        .frame(width: 170, height: 150)
            }
            
            Spacer()
            
            MainButtonView (store: store.scope(state: \.addCatButton, action: \.addCatButton ))
                .buttonStyle(OrangeButton())
                .padding(.horizontal, 20)
            
            Spacer()
            
            VStack {
                MainButtonView (store: store.scope(state: \.speciaButton, action: \.speciaButton ))
                    .padding()
                
                MainButtonView (store: store.scope(state: \.termsButton, action: \.termsButton ))
                    .padding()
                
                MainButtonView (store: store.scope(state: \.privacyButton, action: \.privacyButton ))
                    .padding()

            }
            .buttonStyle(SettingButton())
            
        }
        .background(.mainBackground)
    }
}

#Preview {
    SettingScreen(
        store: StoreOf<Setting>(
            initialState: Setting.State(),
            reducer: { Setting() }
        )
    )
}

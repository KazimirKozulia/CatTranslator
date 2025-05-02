////
////  SettingScreenButton.swift
////  CatTranslator
////
////  Created by Kazimir Kozulia on 24.04.2025.
////
//
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct SettingScreenButton {
//    
//    @ObservableState
//    struct State: Equatable {
//    }
//    
//    enum Action {
//        case buttonTapped
//    }
//    
//    var body: some ReducerOf<SettingScreenButton> {
//        Reduce { state, action in
//            switch action {
//            case .buttonTapped:
//                return .none
////            case .specialButtonTapped:
////                return .none
////                
////            case .privacyButtonTapped:
////                return .none
////                
////            case .termsButtonTapped:
////                return .none
//            }
//        }
//    }
//}
//
//struct SettingScreenButtonView: View {
//    let store: StoreOf<SettingScreenButton>
//    
//    var body: some View {
//        VStack{
//            Button {
//                store.send(.buttonTapped)
//            } label: {
//                Text(Localizable.SettingSpecialButtons.text)
//                    .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
//                    .frame(minWidth: 0, maxWidth: 300)
//                    .padding()
//                    .background(Color.white)
//                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
//                    .cornerRadius(20)
//                    .shadow(color: .gray, radius: 5.0, x:0, y:5)
//            }
//        }
//    }
//}
//            
////            Spacer()
////            
////            Button {
////                store.send(.termsButtonTapped)
////            } label: {
////                Text(Localizable.SettingTermsButtons.text)
////                    .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
////                    .frame(minWidth: 0, maxWidth: 300)
////                    .padding()
////                    .background(Color.white)
////                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
////                    .cornerRadius(20)
////                    .shadow(color: .gray, radius: 5.0, x:0, y:5)
////            }
////            
////            Spacer()
////            
////            Button {
////                store.send(.privacyButtonTapped)
////            } label: {
////                Text(Localizable.SettingPrivacyButtons.text)
////                    .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
////                    .frame(minWidth: 0, maxWidth: 300)
////                    .padding()
////                    .background(Color.white)
////                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
////                    .cornerRadius(20)
////                    .shadow(color: .gray, radius: 5.0, x:0, y:5)
////            }
////        }
////    }
////}

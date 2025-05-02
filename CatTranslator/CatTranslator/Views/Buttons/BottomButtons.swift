////
////  BottomButtons.swift
////  CatTranslator
////
////  Created by Kazimir Kozulia on 22.04.2025.
////
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct BottomButtons{
//    
//    @ObservableState
//    struct State: Equatable{
//    }
//    
//    enum Action {
//        case buttonTapped
////        case privacyButtonTapped
////        case restoreButtonTapped
////        case termsButtonTapped
//    }
//    
//    @Dependency(\.openURL) var openURL
//    
//    var body: some ReducerOf<BottomButtons>{
//        Reduce {state, action in
//            switch action{
//            case .buttonTapped:
//                return .none
////                guard let link = URL(string: "https://policies.google.com/privacy?hl=en-US") else { return .none }
////                return .run { _ in
////                    await openURL(link)
////                }
////            case .restoreButtonTapped:
////                return . none
////            case .termsButtonTapped:
////                return .none
//            }
//        }
//    }
//}
//
//struct BottomButtonsView: View {
//    let store: StoreOf<BottomButtons>
//    var body: some View {
//        
//        Button {
//            store.send(.buttonTapped)
//        } label: {
//            Text(Localizable.BottomButtonPrivacy.text)
//                .font(Fonts.Roboto.medium.swiftUIFont(size: 20))
//                .foregroundColor(.black)
//        }
//    }
//}
//
//

////
////  OuchButton.swift
////  CatTranslator
////
////  Created by Kazimir Kozulia on 27.04.2025.
////
//
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct OuchButton {
//    
//    @ObservableState
//    struct State: Equatable {
//        
//    }
//    
//    enum Action {
//        case buttonTapped
//    }
//    
//    var body: some ReducerOf<OuchButton> {
//        Reduce { state, action in
//            switch action {
//            case .buttonTapped:
//                return .none
//            }
//        }
//    }
//}
//
//struct OuchButtonView: View {
//    let store: StoreOf<OuchButton>
//    
//    var body: some View {
//        Button {
//            store.send(.buttonTapped)
//        } label: {
//            Text(Localizable.SettingScreen.IllustrationButton.text)
//                .font(Fonts.Roboto.medium.swiftUIFont(size: 20))
//                .foregroundStyle(.gradientLeft)
//                .underline(color: .gradientLeft)
//        }
//    }
//}

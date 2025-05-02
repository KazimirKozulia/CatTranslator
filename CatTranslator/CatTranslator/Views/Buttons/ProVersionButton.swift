////
////  ProVersionButton.swift
////  CatTranslator
////
////  Created by Kazimir Kozulia on 28.04.2025.
////
//
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct ProVersionButton {
//    
//    @ObservableState
//    struct State: Equatable {
//    }
//    
//    enum Action {
//        case buttonTapped
//    }
//    
//    var body: some ReducerOf<ProVersionButton> {
//        Reduce { state, action in
//            switch action {
//            case .buttonTapped:
//                return .none
//            }
//        }
//    }
//}
//
//struct ProVersionButtonView: View {
//    let store: StoreOf<ProVersionButton>
//    
//    var body: some View {
//            Button {
//                store.send(.buttonTapped)
//            } label: {
//                Text("why you need a pro version")
//                    .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
//                    .frame(minWidth: 0, maxWidth: 300)
//                    .padding()
//                    .foregroundStyle(Color.white)
//                    .cornerRadius(20)
//        }
//    }
//}

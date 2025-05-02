////
////  PremiumButton.swift
////  CatTranslator
////
////  Created by Kazimir Kozulia on 28.04.2025.
////
//
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct PremiumButton {
//    
//    @ObservableState
//    struct State: Equatable {
//    }
//    
//    enum Action {
//        case buttonTapped
//    }
//    
//    var body: some ReducerOf<PremiumButton> {
//        Reduce { state, action in
//            switch action {
//            case .buttonTapped:
//                return .none
//            }
//        }
//    }
//}
//
//struct PremiumButtonView: View {
//    let store: StoreOf<PremiumButton>
//    
//    var body: some View {
//        ZStack{
//            Button {
//                store.send(.buttonTapped)
//            } label: {
//                Text("PREMIUM")
//                    .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
//                    .frame(minWidth: 0, maxWidth: 300)
//                    .padding()
//                    .background(
//                        LinearGradient(
//                            gradient: Gradient(
//                                colors: [.gradientLeft, .gradientRight]
//                            ),
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .foregroundStyle(Color.white)
//                    .cornerRadius(20)
//            }
//            Image(.lock)
//                .padding(.horizontal, 20)
//        }
//    }
//}

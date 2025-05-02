////
////  SoundButton.swift
////  CatTranslator
////
////  Created by Kazimir Kozulia on 24.04.2025.
////
//
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct SoundButton {
//    
//    @ObservableState
//    struct State: Equatable {
//        var buttonText: String
//        var buttonImage: ImageResource
//    }
//    
//    enum Action {
////        case humanButtonTapped
////        case catButtonTapped
//        case buttonTapped
//    }
//    
//    var body: some ReducerOf<SoundButton> {
//        Reduce { state, action in
//            switch action {
//            case .buttonTapped:
//                return .none
////            case .humanButtonTapped:
////                return .none
////            case .catButtonTapped:
////                return .none
//            }
//        }
//    }
//}
//
//struct SoundButtonView: View {
//    let store: StoreOf<SoundButton>
//    
//    var body: some View {
//        ZStack(alignment: .leading){
//            Button {
//                store.send(.buttonTapped)
//            } label: {
//                Text(store.buttonText)
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
//                    .shadow(color: .gray, radius: 5.0, x:0, y:5)
//            }
//            Image(store.buttonImage)
//                .padding(.horizontal, 20)
//        }
//    }
//}

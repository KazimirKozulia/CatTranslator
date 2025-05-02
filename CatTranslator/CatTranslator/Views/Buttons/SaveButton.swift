//
//  SaveButton.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 28.04.2025.
//
//
//import SwiftUI
//import ComposableArchitecture
//
//@Reducer
//struct SaveButton {
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
//    var body: some ReducerOf<SaveButton> {
//        Reduce { state, action in
//            switch action {
//            case .buttonTapped:
//                return .none
//            }
//        }
//    }
//}
//
//struct SaveButtonView: View {
//    let store: StoreOf<SaveButton>
//    
//    var body: some View {
//        Button {
//            store.send(.buttonTapped)
//        } label: {
//            Text("Save")
//                .font(Fonts.Roboto.medium.swiftUIFont(size: 20))
//                .frame(minWidth: 0, maxWidth: 200)
//                .padding()
//                .background(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
//                .foregroundStyle(Color.white)
//                .cornerRadius(20)
//                .shadow(color: .gray, radius: 5.0, x:0, y:5)
//        }
//    }
//}

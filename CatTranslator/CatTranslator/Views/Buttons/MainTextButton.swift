//
//  MainTextButton.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 27.04.2025.
//


import SwiftUI
import ComposableArchitecture

@Reducer
struct MainTextButton {
    
    @ObservableState
    struct State: Equatable {
        var buttonText: String
        var textSize: CGFloat
        var textColor: Color
        var underlineColor: Color
        var buttonImage: ImageResource?
    }
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<MainTextButton> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}

struct MainTextButtonView: View {
    let store: StoreOf<MainTextButton>
    
    var body: some View {
        ZStack(alignment: .leading){
            Button {
                store.send(.buttonTapped)
            } label: {
                Text(store.buttonText)
                    .font(Fonts.Roboto.light.swiftUIFont(size: store.textSize))
                    .foregroundStyle(store.textColor)
                    .underline(color: store.underlineColor)
            }
            if let imageResource = store.buttonImage {
                Image(imageResource)
                    .padding(.horizontal, 20)
            } else {
                EmptyView()
            }
        }
    }
}

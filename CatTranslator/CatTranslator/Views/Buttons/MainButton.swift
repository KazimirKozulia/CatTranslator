//
//  MainButton.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MainButton {
    
    @ObservableState
    struct State: Equatable {
        var buttonText: String
        var width: CGFloat
        var buttonImage: ImageResource?
    }
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<MainButton> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}

struct MainButtonView: View {
    let store: StoreOf<MainButton>

    var body: some View {
        
        ZStack(alignment: .leading){
            Button {
                store.send(.buttonTapped)
            } label: {
                Text(store.buttonText)
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 20))
                    .frame(minWidth: 0, maxWidth: store.width)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
                    .foregroundStyle(Color.white)
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 5.0, x:0, y:5)
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

struct GenderButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 20))
                .foregroundColor(isSelected ? .white : .text)
                .padding()
                .frame(maxWidth: .infinity)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing))
                .foregroundStyle(Color.white)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 5.0, x:0, y:5)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(isSelected ? AnyShapeStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing)) : AnyShapeStyle(Color.clear))
                        .stroke(Color.blue, lineWidth: 1)
                )
        }
        
        .animation(.easeInOut(duration: 0.3), value: isSelected)
        .buttonStyle(.plain)
    }
}

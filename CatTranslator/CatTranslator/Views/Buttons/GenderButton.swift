//
//  GenderButton.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 09.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct GenderButton {
    
    enum Gender: Equatable, CaseIterable {
        case male, female
    }
    
    @ObservableState
    struct State: Equatable, Identifiable {
        let id: UUID
        var isSelected: Bool
        let gender: Gender
        var title: String {
            switch gender {
            case .female:
                Localizable.GenderButtons.femaleText
            case .male:
                Localizable.GenderButtons.maleText
            }
        }
    }
    
    enum Action {
        case updateSelected(Bool)
        case didTap
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .updateSelected(let selected):
                state.isSelected = selected
                return .none
            case .didTap:
                return .none
            }
        }
    }
}

struct GenderButtonView : View {
    let store: StoreOf<GenderButton>
    
    var body: some View {
        Button {
            store.send(.didTap)
        } label: {
            Text(store.title)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
                .foregroundColor(store.isSelected ? .white : .gray)
                .multilineTextAlignment(.center)
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(store.isSelected ? AnyShapeStyle(LinearGradient(gradient: Gradient(colors: [.gradientLeft, .gradientRight]), startPoint: .leading, endPoint: .trailing)) : AnyShapeStyle(Color.white))
                )
                .animation(.easeInOut(duration: 0.3), value: store.isSelected)
        }
    }
}



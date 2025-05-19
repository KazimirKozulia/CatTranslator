//
//  TabBarButtons.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 10.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct TabBarButtons {
    
    enum TabBarButtonsType: Equatable, CaseIterable {
        case main, sound, history
    }
    
    @ObservableState
    struct State: Equatable, Identifiable {
        let id: UUID
        var isSelected: Bool
        let tabBarButtonsType: TabBarButtonsType
        var buttonImage: ImageResource
        var title: String {
            switch tabBarButtonsType {
            case .main:
                Localizable.MenuMainButton.text
            case .sound:
                Localizable.MenuSoundButton.text
            case . history:
                Localizable.MenuHistoryButton.text
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

struct TabBarButtonsView : View {
    let store: StoreOf<TabBarButtons>
    
    var body: some View {
        Button {
            store.send(.didTap)
        } label: {
            Image(store.buttonImage)
            Text(store.title)
                .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
                .foregroundColor(store.isSelected ? .gradientLeft : .black)
                .multilineTextAlignment(.center)
                .padding(.vertical, 20)
                .animation(.easeInOut(duration: 0.3), value: store.isSelected)
        }
    }
}



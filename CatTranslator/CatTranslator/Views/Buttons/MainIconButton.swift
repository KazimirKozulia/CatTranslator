//
//  MainIconButton.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 02.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MainIconButton {
    
    @ObservableState
    struct State: Equatable {
        var buttonImage: ImageResource
    }
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<MainIconButton> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}

struct MainIconButtonView: View {
    let store: StoreOf<MainIconButton>
    var body: some View {
        Button {
            store.send(.buttonTapped)
        } label: {
            Image(store.buttonImage)
        }
    }
}

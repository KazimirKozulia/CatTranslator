//
//  Stickers.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 11.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Sticker {
    
    @ObservableState
    struct State: Equatable, Identifiable {
        let id: UUID
        let imageName: String
    }

    enum Action {
        case didTap
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .didTap:
                return .none
            }
        }
    }
}

    

struct StickerView: View {
    let store: StoreOf<Sticker>
    
    var body: some View {
        Button {
            store.send(.didTap)
        } label: {
            Image(store.imageName)
//                .scaledToFit()
//                .padding(10)
//                .clipShape(Circle())
                .shadow(radius: 3)
        }
    }
}


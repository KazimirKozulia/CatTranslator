//
//  MainScreen.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Main {
    
    @ObservableState
    struct State: Equatable{
        var stickers: IdentifiedArrayOf<Sticker.State> = []
    }
    
    enum Action {
        case onAppear
        case stickers(IdentifiedActionOf<Sticker>)
    }
    
    var body: some ReducerOf<Main> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                state.stickers = IdentifiedArray(
                    uniqueElements: (1...18).map {
                        "Sticker\($0)"
                    }.map {
                        Sticker.State(id: UUID(), imageName: $0)
                    }
                )
                return .none
            case .stickers(.element(id: UUID(), action: .didTap)):
                return .none
            case .stickers:
                return .none
            }
        } .forEach(\.stickers, action: \.stickers){ Sticker() }
    }
}

struct MainScreen: View {
    let store: StoreOf<Main>
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)

    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(store.scope(state: \.stickers, action: \.stickers)){ StickerView(store: $0)}
            }
        } .containerRelativeFrame([.horizontal, .vertical])
            .background(.mainBackground)
            .onAppear{
                store.send(.onAppear)
            }
    }
}

#Preview {
    MainScreen(
        store: StoreOf<Main>(
            initialState: Main.State(),
            reducer: { Main() }
        )
    )
}

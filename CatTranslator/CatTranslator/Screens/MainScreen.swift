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
                let stickers = [
                    ("Sticker1"),
                    ("Sticker2"),
                    ("Sticker3"),
                    ("Sticker4"),
                    ("Sticker5"),
                    ("Sticker6"),
                    ("Sticker7"),
                    ("Sticker8"),
                    ("Sticker9"),
                    ("Sticker10"),
                    ("Sticker11"),
                    ("Sticker12"),
                    ("Sticker13"),
                    ("Sticker14"),
                    ("Sticker15"),
                    ("Sticker16"),
                    ("Sticker17"),
                    ("Sticker18")
                ]
                state.stickers = IdentifiedArray(uniqueElements: stickers.map{
                    Sticker.State(id: UUID(), imageName: "\($0)")
                })
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

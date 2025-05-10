//
//  HistoryScreen.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct History {
    
    @ObservableState
    struct State: Equatable{
        
    }
    
    enum Action {
        
    }
    
    var body: some ReducerOf<History> {
        Reduce { state, action in
            switch action {
                
            }
        }
    }
}

struct HistoryScreen: View {
    let store: StoreOf<History>
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    HistoryScreen(
        store: StoreOf<History>(
            initialState: History.State(),
            reducer: { History() }
        )
    )
    
}

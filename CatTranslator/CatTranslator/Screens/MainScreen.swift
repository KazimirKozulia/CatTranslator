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
        
    }
    
    enum Action {
        
    }
    
    var body: some ReducerOf<Main> {
        Reduce { state, action in
            switch action {
                
            }
        }
    }
}

struct MainScreen: View {
    let store: StoreOf<Main>
    
    var body: some View {
        Text("Hello, World!")
    }
}

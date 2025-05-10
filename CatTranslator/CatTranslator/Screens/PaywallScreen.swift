//
//  PaywallScreen.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Paywall {
    
    @ObservableState
    struct State: Equatable{
        
    }
    
    enum Action {
        
    }
    
    var body: some ReducerOf<Paywall> {
        Reduce { state, action in
            switch action {
                
            }
        }
    }
}

struct PaywallScreen: View {
    let store: StoreOf<Paywall>
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    PaywallScreen(
        store: StoreOf<Paywall>(
            initialState: Paywall.State(),
            reducer: { Paywall() }
        )
    )
}

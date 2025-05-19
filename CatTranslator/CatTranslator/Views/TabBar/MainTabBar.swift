//
//  MainTabBar.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 10.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MainTabBar {
    
    @ObservableState
    struct State: Equatable {
        var buttonImage: ImageResource
    }
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}

struct MainTabBarView: View {
    let store: StoreOf<MainTabBar>
    var body: some View {
        
    }
}

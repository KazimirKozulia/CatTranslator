//
//  AddAvatarButton.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 28.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct AddAvatarButton {
    
    @ObservableState
    struct State: Equatable {
    }
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<AddAvatarButton> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}

struct AddAvatarButtonView: View {
    let store: StoreOf<AddAvatarButton>
    
    var body: some View {
        Button {
            store.send(.buttonTapped)
        } label: {
            Image(.newAvatar)
                .resizable()
        }
    }
}

//import SwiftUI
//import ComposableArchitecture
//
//// 1. State
//struct GenderSelectionState: Equatable {
//    var selectedGender: String? // "Male" или "Female"
//}
//
//// 2. Actions
//enum GenderSelectionAction: Equatable {
//    case genderSelected(String)
//}
//
//// 3. Reducer
//let genderSelectionReducer = Reducer<GenderSelectionState, GenderSelectionAction, Void> { state, action, _ in
//    switch action {
//    case .genderSelected(let gender):
//        state.selectedGender = (state.selectedGender == gender) ? nil : gender
//        return .none
//    }
//}

// 4. View
//struct GenderSelectionView: View {
//    let store: Store<GenderSelectionState, GenderSelectionAction>
//    @ObservedObject var viewStore: ViewStore<GenderSelectionState, GenderSelectionAction>
//    
//    init(store: Store<GenderSelectionState, GenderSelectionAction>) {
//        self.store = store
//        self.viewStore = ViewStore(store, observe: { $0 })
//    }
//    
//    var body: some View {
//        HStack(spacing: 16) {
//            GenderButton(
//                title: "Male",
//                isSelected: viewStore.selectedGender == "Male",
//                action: { viewStore.send(.genderSelected("Male")) }
//            )
//            
//            GenderButton(
//                title: "Female",
//                isSelected: viewStore.selectedGender == "Female",
//                action: { viewStore.send(.genderSelected("Female")) }
//            )
//        }
//        .padding()
//    }
//}

// 5. Custom Button Component



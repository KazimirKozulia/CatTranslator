//
//  AddCatScreen.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 28.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct AddCat {
    
    @ObservableState
    struct State: Equatable{
        var backCrossButton = BackCrossButton.State()
        var avatarButton = AddAvatarButton.State()
        var saveButton = MainButton.State(buttonText: "Save", width: 170)
        var selectedGender: String?
//        var name:String = ""
    }
    
    enum Action {
//        case binding(BindingAction<State>)
        case backCrossButton(BackCrossButton.Action)
        case avatarButton(AddAvatarButton.Action)
        case saveButton(MainButton.Action)
        case genderSelected(String)
    }
    
    var body: some ReducerOf<AddCat> {
        Reduce { state, action in
            switch action {
            case .backCrossButton:
                return .none
            case .avatarButton:
                return .none
            case .saveButton:
                return .none
            case .genderSelected(let gender):
                state.selectedGender = (state.selectedGender == gender) ? nil : gender
                return .none
            }
        }
   
    }
}

struct AddCatScreen: View {
    let store: StoreOf<AddCat>
    
    var body: some View {
        VStack{
            HStack{
                
                Text("Add a cat")
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 22))
                    .foregroundStyle(.gradientLeft)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                BackCrossButtonView(store: store.scope(state: \.backCrossButton, action: \.backCrossButton))
            } .padding(.horizontal, 20)
            
            Spacer()
            
            AddAvatarButtonView(store: store.scope(state: \.avatarButton, action: \.avatarButton))
            
            Spacer()
            
            HStack(spacing: 16) {
                GenderButton(
                    title: "Male",
                    isSelected: store.selectedGender == "Male",
                    action: { store.send(.genderSelected("Male")) }
                )
                
                GenderButton(
                    title: "Female",
                    isSelected: store.selectedGender == "Female",
                    action: { store.send(.genderSelected("Female")) }
                )
            }
            
            VStack{
                // TextFields
            }
            
            Spacer()
            
            MainButtonView(store: store.scope(state: \.saveButton, action: \.saveButton))
            
            Spacer()
        }
    }
}

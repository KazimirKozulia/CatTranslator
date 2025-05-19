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
        var backCrossButton = MainIconButton.State(buttonImage: .cross)
        var avatarButton = MainIconButton.State(buttonImage: .newAvatar)
        var saveButton = MainButton.State(buttonText: Localizable.SaveButton.text, width: 200)
        var nameTextField = MainTextField.State(textFieldSubtitle: Localizable.AddCatScreen.TextField.catName)
        var ageTextField = MainTextField.State(textFieldSubtitle: Localizable.AddCatScreen.TextField.catsAge)
        var breedTextField = MainTextField.State(textFieldSubtitle: Localizable.AddCatScreen.TextField.breed)
        var genderButtons: IdentifiedArrayOf<GenderButton.State> = []
    }
    
    enum Action {
        case nameTextField(MainTextField.Action)
        case ageTextField(MainTextField.Action)
        case breedTextField(MainTextField.Action)
        case backCrossButton(MainIconButton.Action)
        case avatarButton(MainIconButton.Action)
        case saveButton(MainButton.Action)
        case genderButtons(IdentifiedActionOf<GenderButton>)
        case onAppear
    }
    
    @Dependency(\.uuid) var uuid
    
    var body: some ReducerOf<AddCat> {
        Reduce { state, action in
            switch action {
            case .nameTextField:
                return .none
            case .ageTextField:
                return .none
                
            case .breedTextField:
                return .none
                
            case .backCrossButton:
                return .none
                
            case .avatarButton:
                return .none
                
            case .saveButton:
                return .none
            case .genderButtons(.element(id: let id, action: .didTap)):
                return .run { [buttons = state.genderButtons] send in
                    for button in buttons {
                        await send(.genderButtons(.element(id: button.id, action: .updateSelected(button.id == id))))
                    }
                }
            case .genderButtons:
                return .none
                
            case .onAppear:
                state.genderButtons = IdentifiedArray(uniqueElements: GenderButton.Gender.allCases.map{
                    GenderButton.State(id: UUID(), isSelected: $0 == .male, gender: $0)
                })
                return .none
            }
        }.forEach(\.genderButtons, action: \.genderButtons){ GenderButton() }
    }
}

struct AddCatScreen: View {
    let store: StoreOf<AddCat>
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Text(Localizable.AddCatScreen.mainTitle)
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 22))
                    .foregroundStyle(.gradientLeft)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                MainIconButtonView(store: store.scope(state: \.backCrossButton, action: \.backCrossButton))
            } .padding(.horizontal, 20)
            
            VStack{
                MainIconButtonView(store: store.scope(state: \.avatarButton, action: \.avatarButton))
                    .padding()
                
                MainTextFieldView(store: store.scope(state: \.nameTextField, action: \.nameTextField))
                
                
                HStack(spacing: 16) {
                    ForEach(store.scope(state: \.genderButtons, action: \.genderButtons)){
                        GenderButtonView(store: $0)
                    }
                }
                .padding()
                
                MainTextFieldView(store: store.scope(state: \.ageTextField, action: \.ageTextField))
                
                MainTextFieldView(store: store.scope(state: \.breedTextField, action: \.breedTextField))
            }.padding(.horizontal, 20)
            
            Spacer()
            
            MainButtonView(store: store.scope(state: \.saveButton, action: \.saveButton))
                .buttonStyle(OrangeButton())
            
            Spacer()
        } .containerRelativeFrame([.horizontal, .vertical])
            .background(.mainBackground)
            .onAppear{
                store.send(.onAppear)
            }
    }
}

#Preview {
    AddCatScreen(
        store: StoreOf<AddCat>(
            initialState: AddCat.State(),
            reducer: { AddCat() }
        )
    )
    
}


//
//  SoundScreen.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Sound {
    
    @ObservableState
    struct State: Equatable{
        var humanSoundButton = MainButton.State(buttonText: Localizable.HumanSoundButton.text, width: 200, buttonImage: .humanSoundButton)
        var catSoundButton = MainButton.State(buttonText: Localizable.CatSoundButton.text, width: 200, buttonImage: .catSoundButton)
        
    }
    
    enum Action {
        case humanSoundButton(MainButton.Action)
        case catSoundButton(MainButton.Action)
    }
    
    var body: some ReducerOf<Sound> {
        Reduce { state, action in
            switch action {
            case .catSoundButton:
                return .none
            case .humanSoundButton:
                return .none
            }
        }
    }
}

struct SoundScreen: View {
    let store: StoreOf<Sound>
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Image(.soundCat)
            
            Spacer()
            
            Text(Localizable.ChooseVoice.text)
            
            Spacer()
            
            VStack(alignment: .leading) {
                    MainButtonView (store: store.scope(state: \.humanSoundButton, action: \.humanSoundButton ))
            
                MainButtonView (store: store.scope(state: \.catSoundButton, action: \.catSoundButton ))
            }.buttonStyle(OrangeButton())
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(.mainBackground)
    }
}

#Preview {
    SoundScreen(
        store: StoreOf<Sound>(
            initialState: Sound.State(),
            reducer: { Sound() }
        )
    )
}

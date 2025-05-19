//
//  ChooseAvatarView.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 13.05.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct ChooseAvatar {
    
    @ObservableState
    struct State: Equatable {
        var crossButton = MainIconButton.State(buttonImage: .cross)
        var saveButton = MainButton.State(buttonText: Localizable.SaveButton.text, width: 200)
        var avatars: IdentifiedArrayOf<Sticker.State> = []
    }
    
    enum Action {
        case crossButton(MainIconButton.Action)
        case saveButton(MainButton.Action)
        case avatars(IdentifiedActionOf<Sticker>)
        case onAppear
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                let avatars = [
                    ("Cat 1"),
                    ("Cat 2"),
                    ("Cat 3"),
                    ("Cat 4"),
                    ("Cat 5"),
                    ("Cat 6"),
                    ("Cat 7"),
                    ("Cat 8"),
                    ("Cat 9"),
                    ("Cat 10"),
                    ("Cat 11"),
                    ("Cat 12")
                ]
                state.avatars = IdentifiedArray(uniqueElements: avatars.map{
                    Sticker.State(id: UUID(), imageName: "\($0)")
                })
                return .none
            case .avatars(.element(id: UUID(), action: .didTap)):
                return .none
            case .avatars:
                return .none
            case .crossButton:
                return .none
            case .saveButton:
                return .none
            }
        } .forEach(\.avatars, action: \.avatars){ Sticker() }
    }
}

struct ChooseAvatarView: View {
    let store: StoreOf<ChooseAvatar>
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        VStack {
            HStack{
                Spacer()

                Text(Localizable.ChooseAvatarView.title)
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
                    .foregroundStyle(.gradientLeft)
                
                Spacer()
                
                MainIconButtonView(store: store.scope(state: \.crossButton, action: \.crossButton))
                
            } .padding(.horizontal, 30)
            
            VStack{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(store.scope(state: \.avatars, action: \.avatars)){ StickerView(store: $0)}
                }
            }
            
            Spacer()
            
            MainButtonView(store: store.scope(state: \.saveButton, action: \.saveButton))
                .buttonStyle(OrangeButton())
            
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(.mainBackground)
        .onAppear {
            store.send(.onAppear)
        }
    }
}

#Preview {
    ChooseAvatarView(
        store: StoreOf<ChooseAvatar>(
            initialState: ChooseAvatar.State(),
            reducer: { ChooseAvatar() }
        )
    )
}


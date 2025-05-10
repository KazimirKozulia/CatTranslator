//
//  MainButton.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MainButton {
    
    @ObservableState
    struct State: Equatable {
        var buttonText: String
        var width: CGFloat
        var buttonImage: ImageResource?
        
    }
    
    enum Action {
        case buttonTapped
    }
    
    var body: some ReducerOf<MainButton> {
        Reduce { state, action in
            switch action {
            case .buttonTapped:
                return .none
            }
        }
    }
}


struct MainButtonView: View {
    let store: StoreOf<MainButton>
    
    var body: some View {
        Button {
            store.send(.buttonTapped)
        } label: {
            HStack{
                if let imageResource = store.buttonImage {
                    Image(imageResource)
                } else {
                    EmptyView()
                }
                
                Spacer()
                
                Text(store.buttonText)
                    .font(Fonts.Roboto.medium.swiftUIFont(size: 18))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 20)
                Spacer()
                
            } .frame(width: store.width)
        }
    }
}

struct OrangeButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.gradientLeft, .gradientRight]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .foregroundColor(.white)
            .cornerRadius(30)
            .shadow(color: .gray, radius: 5.0, x: 0, y: 5)
    }
}

struct SettingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(.white)
            .foregroundStyle(
                LinearGradient(
                    gradient: Gradient(colors: [.gradientLeft, .gradientRight]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(30)
            .shadow(color: .gray, radius: 5.0, x: 0, y: 5)
    }
}

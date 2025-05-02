//
//  CatTranslatorApp.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//

import SwiftUI
import ComposableArchitecture
import FirebaseCore

@main
struct CatTranslatorApp: App {
    var body: some Scene {
                WindowGroup {
                    SoundScreen(
                        store: StoreOf<Sound>(
                            initialState:
                                Sound.State(),
                            reducer: { Sound() }
                        )
                    )
                }
//        WindowGroup {
//            OnboardingScreens(
//                store: StoreOf<Onboarding>(
//                    initialState:
//                        Onboarding
//                        .State(myType: .first),
//                    reducer: { Onboarding() }
//                )
//            )
//        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

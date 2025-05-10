//
//  Shared.swift
//  CatTranslator
//
//  Created by Kazimir Kozulia on 22.04.2025.
//
import SwiftUI
import ComposableArchitecture

extension SharedKey where Self == AppStorageKey<Bool> {
    static var isOnboardingPassed: Self {
        appStorage("isOnboardingPassed")
    }
}

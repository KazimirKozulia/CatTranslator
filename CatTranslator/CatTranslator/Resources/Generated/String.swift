// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum Localizable {
  public enum AddCatButton {
    /// ДОБАВИТЬ КОШКУ
    public static let text = Localizable.tr("Localizable", "addCatButton.text", fallback: "ДОБАВИТЬ КОШКУ")
  }
  public enum BottomButtonPrivacy {
    /// Localizable.strings
    ///   CatTranslator
    /// 
    ///   Created by Kazimir Kozulia on 22.04.2025.
    public static let text = Localizable.tr("Localizable", "bottomButtonPrivacy.text", fallback: " Политика конфиденциальности")
  }
  public enum BottomButtonRestore {
    /// Восстановить
    public static let text = Localizable.tr("Localizable", "bottomButtonRestore.text", fallback: "Восстановить")
  }
  public enum BottomButtonTerms {
    /// Условия эксплуатации
    public static let text = Localizable.tr("Localizable", "bottomButtonTerms.text", fallback: "Условия эксплуатации")
  }
  public enum CatSoundButton {
    /// КОШАЧИЙ ЗВУК
    public static let text = Localizable.tr("Localizable", "catSoundButton.text", fallback: "КОШАЧИЙ ЗВУК")
  }
  public enum ChooseVoice {
    /// Выберите, чей голос будет звучать
    public static let text = Localizable.tr("Localizable", "chooseVoice.text", fallback: "Выберите, чей голос будет звучать")
  }
  public enum ContinueButton {
    /// ПРОДОЛЖИТЬ
    public static let text = Localizable.tr("Localizable", "continueButton.text", fallback: "ПРОДОЛЖИТЬ")
  }
  public enum FirstOnboardingScreen {
    /// Узнайте, как реагирует кошка
    public static let mainTitle = Localizable.tr("Localizable", "firstOnboardingScreen.mainTitle", fallback: "Узнайте, как реагирует кошка")
    /// Определите, как кошка отвечает 
    ///  на ваши запросы
    public static let subTitle = Localizable.tr("Localizable", "firstOnboardingScreen.subTitle", fallback: "Определите, как кошка отвечает \n на ваши запросы")
  }
  public enum FourthOnboardingScreen {
    /// 3 дня бесплатно, затем €9.49/неделя
    public static let freeButton = Localizable.tr("Localizable", "fourthOnboardingScreen.freeButton", fallback: "3 дня бесплатно, затем €9.49/неделя")
    /// Безлимитный доступ к 
    ///  Cat Translate Pro
    public static let mainTitle = Localizable.tr("Localizable", "fourthOnboardingScreen.mainTitle", fallback: "Безлимитный доступ к \n Cat Translate Pro")
  }
  public enum HumanSoundButton {
    /// ЧЕЛОВЕЧЕСКИЙ ГОЛОС
    public static let text = Localizable.tr("Localizable", "humanSoundButton.text", fallback: "ЧЕЛОВЕЧЕСКИЙ ГОЛОС")
  }
  public enum SecondOnboardingScreen {
    /// Пожалуйста, оцените приложение!
    public static let mainTitle = Localizable.tr("Localizable", "secondOnboardingScreen.mainTitle", fallback: "Пожалуйста, оцените приложение!")
    /// Мы всегда учитываем ваши отзывы, 
    ///  чтобы улучшить наш продукт!
    public static let subTitle = Localizable.tr("Localizable", "secondOnboardingScreen.subTitle", fallback: "Мы всегда учитываем ваши отзывы, \n чтобы улучшить наш продукт!")
  }
  public enum SettingPrivacyButtons {
    /// ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ
    public static let text = Localizable.tr("Localizable", "settingPrivacyButtons.text", fallback: "ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ")
  }
  public enum SettingSpecialButtons {
    /// СПЕЦИАЛЬНОЕ ПРЕДЛОЖЕНИЕ
    public static let text = Localizable.tr("Localizable", "settingSpecialButtons.text", fallback: "СПЕЦИАЛЬНОЕ ПРЕДЛОЖЕНИЕ")
  }
  public enum SettingTermsButtons {
    /// УСЛОВИЯ ИСПОЛЬЗОВАНИЯ
    public static let text = Localizable.tr("Localizable", "settingTermsButtons.text", fallback: "УСЛОВИЯ ИСПОЛЬЗОВАНИЯ")
  }
  public enum SubscriptionPlans {
    /// Выгодные планы подписки!
    public static let text = Localizable.tr("Localizable", "subscriptionPlans.text", fallback: "Выгодные планы подписки!")
  }
  public enum ThirtOnboardingScreen {
    /// Определите настроение кошки
    public static let mainTitle = Localizable.tr("Localizable", "thirtOnboardingScreen.mainTitle", fallback: "Определите настроение кошки")
    /// Начните определять, в каком 
    ///  настроении ваш питомец
    public static let subTitle = Localizable.tr("Localizable", "thirtOnboardingScreen.subTitle", fallback: "Начните определять, в каком \n настроении ваш питомец")
  }
  public enum YearSubscription {
    /// Популярная годовая подписка
    public static let text = Localizable.tr("Localizable", "yearSubscription.text", fallback: "Популярная годовая подписка")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Localizable {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type

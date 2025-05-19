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
  public enum AddCatScreen {
    /// Добавить кошку
    public static let mainTitle = Localizable.tr("Localizable", "addCatScreen.mainTitle", fallback: "Добавить кошку")
    public enum TextField {
      /// Порода (необязательно)
      public static let breed = Localizable.tr("Localizable", "addCatScreen.textField.breed", fallback: "Порода (необязательно)")
      /// Имя кошки
      public static let catName = Localizable.tr("Localizable", "addCatScreen.textField.catName", fallback: "Имя кошки")
      /// Возраст кошки
      public static let catsAge = Localizable.tr("Localizable", "addCatScreen.textField.catsAge", fallback: "Возраст кошки")
    }
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
  public enum CatTranslatorProScreen {
    /// Неограниченный доступ к переводчику кошек Pro
    public static let mainTitle = Localizable.tr("Localizable", "catTranslatorProScreen.mainTitle", fallback: "Неограниченный доступ к переводчику кошек Pro")
    /// $29,99/год, отмена в любое время
    public static let priceTitle = Localizable.tr("Localizable", "catTranslatorProScreen.priceTitle", fallback: "$29,99/год, отмена в любое время")
    /// Зачем вам нужна Pro версия
    public static let proVersionTitle = Localizable.tr("Localizable", "catTranslatorProScreen.proVersionTitle", fallback: "Зачем вам нужна Pro версия")
  }
  public enum ChooseAvatarView {
    /// Выберите аватар
    public static let title = Localizable.tr("Localizable", "chooseAvatarView.title", fallback: "Выберите аватар")
  }
  public enum ChooseCat {
    /// Выберите свою кошку
    public static let text = Localizable.tr("Localizable", "chooseCat.text", fallback: "Выберите свою кошку")
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
  public enum GenderButtons {
    /// Самка
    public static let femaleText = Localizable.tr("Localizable", "genderButtons.femaleText", fallback: "Самка")
    /// Самец
    public static let maleText = Localizable.tr("Localizable", "genderButtons.maleText", fallback: "Самец")
  }
  public enum HistoryScreen {
    /// У вас нет переводов
    public static let dontHaveTranslations = Localizable.tr("Localizable", "historyScreen.dontHaveTranslations", fallback: "У вас нет переводов")
    public enum CatButton {
      /// КОШКА
      public static let tetx = Localizable.tr("Localizable", "historyScreen.catButton.tetx", fallback: "КОШКА")
    }
    public enum HumanButton {
      /// ЧЕЛОВЕК
      public static let text = Localizable.tr("Localizable", "historyScreen.humanButton.text", fallback: "ЧЕЛОВЕК")
    }
  }
  public enum HumanSoundButton {
    /// ЧЕЛОВЕЧЕСКИЙ ГОЛОС
    public static let text = Localizable.tr("Localizable", "humanSoundButton.text", fallback: "ЧЕЛОВЕЧЕСКИЙ ГОЛОС")
  }
  public enum LimitedOfferScreen {
    /// До конца предложения осталось
    public static let endOffer = Localizable.tr("Localizable", "limitedOfferScreen.endOffer", fallback: "До конца предложения осталось")
    /// Получить полный доступ
    public static let getFullAccess = Localizable.tr("Localizable", "limitedOfferScreen.getFullAccess", fallback: "Получить полный доступ")
    /// Ограниченное предложение
    public static let mainTitle = Localizable.tr("Localizable", "limitedOfferScreen.mainTitle", fallback: "Ограниченное предложение")
    /// Всего $14,99
    public static let newPrice = Localizable.tr("Localizable", "limitedOfferScreen.newPrice", fallback: "Всего $14,99")
    /// Старая цена $14,99
    public static let oldPrice = Localizable.tr("Localizable", "limitedOfferScreen.oldPrice", fallback: "Старая цена $14,99")
    /// Разблокируйте все функции
    public static let subTitle = Localizable.tr("Localizable", "limitedOfferScreen.subTitle", fallback: "Разблокируйте все функции")
  }
  public enum MenuHistoryButton {
    /// История
    public static let text = Localizable.tr("Localizable", "menuHistoryButton.text", fallback: "История")
  }
  public enum MenuMainButton {
    /// Главная
    public static let text = Localizable.tr("Localizable", "menuMainButton.text", fallback: "Главная")
  }
  public enum MenuSoundButton {
    /// Звук
    public static let text = Localizable.tr("Localizable", "menuSoundButton.text", fallback: "Звук")
  }
  public enum RecordButton {
    /// Перезаписать
    public static let text = Localizable.tr("Localizable", "recordButton.text", fallback: "Перезаписать")
  }
  public enum SaveButton {
    /// Сохранить
    public static let text = Localizable.tr("Localizable", "saveButton.text", fallback: "Сохранить")
  }
  public enum SaveTranslationButton {
    /// Сохранить перевод
    public static let text = Localizable.tr("Localizable", "saveTranslationButton.text", fallback: "Сохранить перевод")
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
  public enum SettingScreen {
    /// Популярная годовая подписка
    public static let canvasFirstText = Localizable.tr("Localizable", "settingScreen.canvasFirstText", fallback: "Популярная годовая подписка")
    /// Всего
    public static let canvasSecondText = Localizable.tr("Localizable", "settingScreen.canvasSecondText", fallback: "Всего")
    /// в месяц
    public static let canvasThirdText = Localizable.tr("Localizable", "settingScreen.canvasThirdText", fallback: "в месяц")
  }
  public enum SettingSpecialButtons {
    /// СПЕЦИАЛЬНОЕ ПРЕДЛОЖЕНИЕ
    public static let text = Localizable.tr("Localizable", "settingSpecialButtons.text", fallback: "СПЕЦИАЛЬНОЕ ПРЕДЛОЖЕНИЕ")
  }
  public enum SettingTermsButtons {
    /// УСЛОВИЯ ИСПОЛЬЗОВАНИЯ
    public static let text = Localizable.tr("Localizable", "settingTermsButtons.text", fallback: "УСЛОВИЯ ИСПОЛЬЗОВАНИЯ")
  }
  public enum SoundAnalyzing {
    /// Анализ
    public static let text = Localizable.tr("Localizable", "soundAnalyzing.text", fallback: "Анализ")
  }
  public enum SoundScreen {
    /// Идёт запись звука
    public static let title = Localizable.tr("Localizable", "soundScreen.title", fallback: "Идёт запись звука")
  }
  public enum SoundTarlationScreen {
    /// Перевод завершён!
    public static let title = Localizable.tr("Localizable", "soundTarlationScreen.title", fallback: "Перевод завершён!")
  }
  public enum StopRecordingButton {
    /// Остановить запись
    public static let text = Localizable.tr("Localizable", "stopRecordingButton.text", fallback: "Остановить запись")
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

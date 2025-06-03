import CreateML
import Foundation

let trainingDataURL = URL(fileURLWithPath: "/Users/a1111/Desktop/App/CatSoundsDataset")


let modelOutputURL = URL(fileURLWithPath: "/Users/a1111/Desktop/App/MySoundsModel.mlmodel")

do {
    let trainingData = MLSoundClassifier.DataSource.labeledDirectories(at: trainingDataURL)

   
    let soundClassifier = try MLSoundClassifier(trainingData: trainingData)
    print("Обучение завершено!")

   
    let metadata = MLModelMetadata(author: "Вереник Влад",
                                 shortDescription: "Модель для распознавания звука котов",
                                 version: "1.0")

    try soundClassifier.write(to: modelOutputURL, metadata: metadata)
    print("Модель сохранена в: \(modelOutputURL.path)")

} catch {
    print("Произошла ошибка: \(error)")
}

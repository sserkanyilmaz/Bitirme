import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        Task {
            await performAsyncOperations()
        }
    }
    func performAsyncOperations() async {
        let database = Firestore.firestore()
        let wordsCollection = database.collection("Word")
        
        var wordService = WordService(database: database,collection: wordsCollection)
        let  word = try? await wordService.getbyId(id: "Q7SheO3LZFD0LHWakUaN")
        guard let word else { return }
        
        var wordQuizService = WordQuizService()
        var quiz = WordQuiz(word: word)
        wordQuizService.startQuiz(for: quiz)
        
        print(wordQuizService.checkAnswer(for: quiz, answer: "Bll"))

        
    }
}

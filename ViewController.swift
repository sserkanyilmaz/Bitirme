import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let database = Firestore.firestore()
        let wordsCollection = database.collection("Word")
        let newWordRef = wordsCollection.document() // Generate a unique document ID
        let word = Word(turkishForm: "Ekmek", englishForm: "Break")
        do {
                try newWordRef.setData([
                    "EnglishForm": word.EnglishForm,
                    "TurkishForm": word.TurkishForm,
                    "wordId" : newWordRef.documentID
                ])
                print("Word added successfully!")
            } catch {
                print("Error adding word: \(error)")
            }
        
        database.collection("Word")
            .document(newWordRef.documentID)
            .addSnapshotListener { snapshot, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let data = snapshot?.data() else {
                    print("No data found")
                    return
                }
                
                do {
                    let word = try snapshot?.data(as: Word.self)
                    print(word?.TurkishForm)
                    print(word?.EnglishForm)
                } catch let error {
                    print("Error decoding word: \(error)")
                }
            }
    }
}

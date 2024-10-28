//
//  WordService.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

import FirebaseFirestore

class WordService : CRUD
{
    
    typealias Item = Word
    
    var database: Firestore
    
    var collection: CollectionReference
    
    required init(database: Firestore, collection: CollectionReference) {
        self.database = database
        self.collection = collection
    }
    
    func create(item: Word) -> Word {
        
        let newWordRef = collection.document()
        
        newWordRef.setData([
            "EnglishForm": item.EnglishForm,
            "TurkishForm": item.TurkishForm,
            "wordId" : newWordRef.documentID
        ])
        
        return item
    }
    
    func getbyId(id: String) async throws -> Word? {
        let documentRef = database.collection(self.collection.collectionID).document(id)
        
        do {
            
            let document = try await documentRef.getDocument()
            
            if let word = try document.data(as: Word?.self) {
                return word
            } else {
                throw NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Document does not exist or data is invalid"])
            }
            
        } catch {
            print("Error fetching document: \(error)")
            throw error
        }
    }
    
    func getAll() async -> [Word] {
        
        do {
            
            let querySnapshot = try await database.collection(collection.collectionID).getDocuments()
            
            var words: [Word] = []
            for document in querySnapshot.documents {
                
                if let word = try? document.data(as: Word.self) {
                    print("\(document.documentID) => \(word)")
                    words.append(word)
                } else {
                    print("Failed to decode document \(document.documentID) as Word")
                }
            }
            
            return words
        } catch {
            print("Error fetching documents: \(error)")
            return []
        }
    }
    
    func update(item: Word) async throws -> Word {
        let documentRef = database.collection(collection.collectionID).document(item.wordId)

        do {
            try await documentRef.updateData([
                "EnglishForm": item.EnglishForm,
                "TurkishForm": item.TurkishForm
            ])
            
            print("Document successfully updated")
            return item
        } catch {
            print("Error updating document: \(error)")
            throw error
        }
    }
    func delete(id: String) async -> Bool{
        
        do {
            
            try await database.collection(collection.collectionID).document(id).delete()
            print("Document successfully deleted")
            return true
        } catch {
            print("Error updating document: \(error)")
            return false
        }
    }
    
    
    
}

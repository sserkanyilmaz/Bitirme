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
    
    func create(item: Word) -> Word {
        
        let newWordRef = collection.document() // Generate a unique document ID
        
        try newWordRef.setData([
            "EnglishForm": item.EnglishForm,
            "TurkishForm": item.TurkishForm,
            "wordId" : newWordRef.documentID
        ])
        
        return item
    }
    
    func read() -> [Word] {
        <#code#>
    }
    
    func update(item: Word) -> Word {
        <#code#>
    }
    func delete(id: String) {
        <#code#>
    }
    
    required init(database: Firestore, collection: CollectionReference) {
        <#code#>
    }
    

    
}

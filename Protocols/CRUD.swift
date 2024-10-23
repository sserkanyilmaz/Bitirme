//
//  CRUD.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//
import FirebaseFirestore

protocol CRUD {
    
    associatedtype Item
    
    var database: Firestore { get  set }
    var collection: CollectionReference { get  set }
    
    func create(item :Item) -> Item
    func read() -> [Item]
    func update(item :Item) -> Item
    func delete(id :String)
    
    init (database: Firestore , collection: CollectionReference)
    
}

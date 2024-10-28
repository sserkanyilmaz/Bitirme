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
    
    func create(item :Item) async throws -> Item
    func getAll() async throws -> [Item]
    func update(item :Item) async throws-> Item
    func delete(id :String) async throws-> Bool
    func getbyId(id :String) async throws -> Item?
    
    init (database: Firestore , collection: CollectionReference)
    
}

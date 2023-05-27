//
//  Character.swift
//  MyRealm
//
//  Created by Jaden Nation on 5/24/23.
//

import Foundation
import RealmSwift

enum CharacterClass: String  {
    case mage, priest, warrior, rogue
}

class Character: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var age: Int
    @Persisted var characterClass: String
    
    convenience init(name: String, age: Int, characterClass: CharacterClass) {
        self.init()
        self._id = ObjectId()
        self.name = name
        self.age = age
        self.characterClass = characterClass.rawValue
    }
}


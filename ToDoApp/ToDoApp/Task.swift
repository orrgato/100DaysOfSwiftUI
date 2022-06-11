//
//  Task.swift
//  ToDoApp
//
//  Created by Shiwam verma on 12/06/22.
//

import Foundation
import RealmSwift

class task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
    
}

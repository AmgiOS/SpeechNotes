//
//  NotesEntity.swift
//  SpeechNotes
//
//  Created by Amg on 12/08/2020.
//  Copyright © 2020 Amg-Gauthier. All rights reserved.
//

import Foundation
import CoreData

import Foundation
import CoreData

class Notes: NSManagedObject {
    static var all: [Notes] {
        let request: NSFetchRequest<Notes> = Notes.fetchRequest()
        guard let notes = try? AppDelegate.viewContext.fetch(request) else { return [] }
        return notes.reversed()
    }
    
    static func deleteAllNotes() {
        let deleteFetchRequest = NSBatchDeleteRequest(fetchRequest: Notes.fetchRequest())
        let _ = try? AppDelegate.viewContext.execute(deleteFetchRequest)
    }
}

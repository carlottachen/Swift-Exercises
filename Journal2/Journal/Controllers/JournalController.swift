//
//  JournalController.swift
//  Journal
//
//  Created by Carlotta Chen on 1/18/22.
//

import Foundation

class JournalController {
    // Shared instance
    static let shared = JournalController()
    
    // Source of Truth, everything is here
    var journals: [Journal] = []
    
    // CRUD
    // Create
    func createJournal(name: String) {
        let newJournal = Journal(name: name)
        journals.append(newJournal)
        // After adding to list, save to disk
        saveToPersistenceStore()
    }
    
    // Read
    
    // Delete
    func deleteJournal(journal: Journal) {
        guard let index = journals.firstIndex(of: journal) else { return }
        journals.remove(at: index)
        // After deleting from list, save to disk
        saveToPersistenceStore()
    }
    
    // Persistence
    
    private func persistentStore() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectoryURL = urls[0].appendingPathComponent("Journal.json")
        return documentsDirectoryURL
    }
   
   // 1. Save
   func saveToPersistenceStore() {
       do {
           let data = try JSONEncoder().encode(journals) // encode entries and save to data
           try data.write(to: persistentStore())   // write to URL by calling method above
       } catch {
           print("We had an error saving to our persistence store.")
           print(error)
           print(error.localizedDescription)
       }
   }
   
   // 2. Load
   
   func loadFromPersistenceStore() {
       do {
           let data = try Data(contentsOf: persistentStore())  // get data from persistence store
           let fetchedJournals = try JSONDecoder().decode([Journal].self, from: data)
           journals = fetchedJournals
       } catch {
           print("We had an error loading from our persistence store.")
           print(error)
           print(error.localizedDescription)
       }
   }
}

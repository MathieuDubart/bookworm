//
//  DataController.swift
//  Bookworm
//
//  Created by Mathieu Dubart on 02/09/2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    // ----- Dit à Swift d'utiliser le model de données Bookworm pour le container.
    // ----- Prépare le coordinator à le charger
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}

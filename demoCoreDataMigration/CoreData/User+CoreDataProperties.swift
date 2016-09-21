//
//  User+CoreDataProperties.swift
//  demoCoreDataMigration
//
//  Created by Atal Bansal on 21/09/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension User {

    @NSManaged var userID: String?
    @NSManaged var userName: String?
    @NSManaged var userPassword: String?

}

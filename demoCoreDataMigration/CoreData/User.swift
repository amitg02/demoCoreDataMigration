//
//  User.swift
//  demoCoreDataMigration
//
//  Created by Atal Bansal on 21/09/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//

import Foundation
import CoreData


class User: NSManagedObject {

	override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
		super.init(entity: entity, insertIntoManagedObjectContext: context)
	}
// Insert code here to add functionality to your managed object subclass
	func saveUser(managedContext:NSManagedObjectContext,userID:String,userName:String,userPassword:String,userEmail:String) {
		let entity =  NSEntityDescription.entityForName("User", inManagedObjectContext:managedContext)
		let userNew = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext) as! User
		userNew.setValue(userID, forKey: "userID")
		userNew.setValue(userName, forKey: "userName")
		userNew.setValue(userPassword, forKey: "userPassword")
		userNew.setValue(userEmail, forKey: "userEmail")
		do {
			try managedContext.save()
		} catch let error as NSError  {
	print("Could not save \(error), \(error.userInfo)")
  }

	}
	func fetchUser(managedContext:NSManagedObjectContext) -> [NSManagedObject] {
		var userArray = [NSManagedObject]()
	  let fetchRequest = NSFetchRequest(entityName: "User")
	do {
		let results =
		try managedContext.executeFetchRequest(fetchRequest)
		userArray = results as! [NSManagedObject]
		} catch let error as NSError {
		print("Could not fetch \(error), \(error.userInfo)")
		}
		return userArray
	}

}

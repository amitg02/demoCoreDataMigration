//
//  Constant.swift
//  Enock
//
//  Created by Atal Bansal on 16/08/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//
import UIKit
import CoreData

/*
@discussion     This class contains all common constant .
@paramters      NA
@return			NA
*/
class Constant{
	static let appDelegate  = UIApplication.sharedApplication().delegate as! AppDelegate
	static let managedContext 	= Constant.appDelegate.managedObjectContext
	static var user = User.init(entity: NSEntityDescription.entityForName("User", inManagedObjectContext: Constant.managedContext)!, insertIntoManagedObjectContext: Constant.managedContext)
}

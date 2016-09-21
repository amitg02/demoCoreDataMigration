//
//  ViewController.swift
//  demoCoreDataMigration
//
//  Created by Atal Bansal on 21/09/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

	@IBOutlet var tableview:UITableView!
	var userArray = [NSManagedObject]()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
				// Do any additional setup after loading the view, typically from a nib.
	}
	override func viewWillAppear(animated: Bool) {
		userArray = Constant.user.fetchUser(Constant.managedContext)
		tableview.reloadData()
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}
extension ViewController:UITableViewDelegate,UITableViewDataSource {
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return userArray.count
	}
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
		let user = userArray[indexPath.row]
		cell!.textLabel!.text =  user.valueForKey("userName") as? String
		let userID = user.valueForKey("userID") as? String
		let userPassword = user.valueForKey("userPassword") as? String
		cell!.detailTextLabel?.text = "UserID:\(userID) and userPassword:\(userPassword)"
		return cell!
	}
}


//
//  AddUserVC.swift
//  demoCoreDataMigration
//
//  Created by Atal Bansal on 21/09/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//

import UIKit
import CoreData
class AddUserVC: UIViewController {

	@IBOutlet var userNameText:UITextField!
	@IBOutlet var userPasswordText:UITextField!
	@IBOutlet var userEmailText:UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
	@IBAction func closeClick(sender:UIButton) {
		self.dismissViewControllerAnimated(true, completion: nil)
		
	
	}
	@IBAction func submitClick(sender:UIButton)  {
		let userIDArr = Constant.user.fetchUser(Constant.managedContext)
		let userID  = userIDArr.count
		Constant.user.saveUser(Constant.managedContext,userID: String(userID), userName: userNameText.text!, userPassword:  userPasswordText.text!,userEmail: userEmailText.text!)
		self.dismissViewControllerAnimated(true, completion: nil)
	}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

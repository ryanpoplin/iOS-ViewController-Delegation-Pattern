//
//  ViewController.swift
//  delegation
//
//  Created by Byrdann Fox on 12/23/15.
//  Copyright © 2015 Loopi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, ViewControllerTwoDelegate {

	// @interface
	
	@IBOutlet weak var delegationMessageLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// set the delegate property of the UINavigationController class so that it has a reference to our ViewController class
		navigationController?.delegate = self
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	// @implementation
	
	// TODO: - HOW TO MITIGATE THIS?
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		let destinationViewController = segue.destinationViewController as! ViewControllerTwo
		// to gain reference to the currently instantiated view controller,
		// we need UIStoryboardSegue access
		destinationViewController.delegate = self
	}
	
	// now this class has access to some properties and methods defined in the UINavigationController's protocol (...)
	func navigationControllerSupportedInterfaceOrientations(navigationController: UINavigationController) -> UIInterfaceOrientationMask {
		return UIInterfaceOrientationMask.Portrait
	}
	
	func didSendMessage(message: String) {
		delegationMessageLabel.text = message
	}
	
}
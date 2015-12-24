//
//  ViewControllerTwo.swift
//  delegation
//
//  Created by Byrdann Fox on 12/23/15.
//  Copyright © 2015 Loopi. All rights reserved.
//

import UIKit

protocol ViewControllerTwoDelegate: class {
	func didSendMessage(message: String)
}

class ViewControllerTwo: UIViewController {

	// @interface
	
	@IBOutlet weak var delegationMessageTextField: UITextField!
	
	weak var delegate: ViewControllerTwoDelegate?
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewWillDisappear(animated: Bool) {
		delegate?.didSendMessage(delegationMessageTextField.text!)
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
	
	// @implementation

}
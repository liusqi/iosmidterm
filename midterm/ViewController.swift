//
//  ViewController.swift
//  midterm
//
//  Created by ctrlaltbelieve2 on 2015-02-24.
//  Copyright (c) 2015 ctrlaltbelieve2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBOutlet weak var text: UITextField!
	@IBOutlet weak var sc: UISegmentedControl!
	
	@IBOutlet weak var countSc: UISegmentedControl!
	@IBOutlet weak var count: UITextField!
	
	@IBOutlet weak var colorSwitch: UISegmentedControl!
	
	@IBAction func tap(sender: AnyObject) {
		switch(sc.selectedSegmentIndex)
		{
		case 0: text.text = "first"
		case 1: text.text = "second"
		case 2: text.text = "third"
		default : break
		}
	}
	
	@IBAction func colorChange(sender: AnyObject) {
		switch(colorSwitch.selectedSegmentIndex)
		{
		case 0: self.view.backgroundColor = UIColor.redColor()
		case 1: self.view.backgroundColor = UIColor.blueColor()
		case 2: self.view.backgroundColor = UIColor.whiteColor()
		default : break
		}
	}
	@IBAction func counter(sender: AnyObject) {
		var result: Int = count.text.toInt()!
		
		switch(countSc.selectedSegmentIndex)
		{
		case 0: result = result + 1
			    count.text = String(result)
		case 1: result = result + 2
				count.text = String(result)
		default : break
		}	}
}


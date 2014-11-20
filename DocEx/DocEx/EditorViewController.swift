//
//  EditorViewController.swift
//  DocEx
//
//  Created by Dale Musser on 11/13/14.
//  Copyright (c) 2014 Dale Musser. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {
    
    var status = "none"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("Editor View Did Load")
    }
    
    @IBAction func save(sender: AnyObject) {
        println("In save")
        status = "save"
        performSegueWithIdentifier("returnToDocs", sender: self)
    }
    
    @IBAction func cancel(sender: AnyObject) {
        println("In cancel")
        status = "cancel"
        performSegueWithIdentifier("returnToDocs", sender: self)
    }
    
    @IBAction func buttonPress(sender: AnyObject) {
        println("Button pressed...will dissmiss")
        dismissViewControllerAnimated(true, completion: doOnDismissCompletion)
    }
    
    func doOnDismissCompletion() {
        println("This is on completion of dissmiss.")
    }
    
    override func viewWillAppear(animated: Bool) {
        println("viewWillAppear in Editor")
    }
    
    override func viewDidAppear(animated: Bool) {
        println("viewDidAppear in Editor")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("preparing in editor for segue")
        
        println(segue.identifier!)
        
        let destViewController = segue.destinationViewController as DocsViewController
        
        if (status == "save") {
            destViewController.returnStatus = "Saved New Document"
        } else {
            destViewController.returnStatus = "Cancelled Operation"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

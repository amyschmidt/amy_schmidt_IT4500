//
//  DocsViewController.swift
//  DocEx
//
//  Created by Dale Musser on 11/13/14.
//  Copyright (c) 2014 Dale Musser. All rights reserved.
//

// https://github.com/bradley/iOSUnwindSegueProgramatically

import UIKit

class DocsViewController: UIViewController {
    
    var returnStatus = "none"
    var editorViewController: UIViewController?

    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Docs View Did Load")
        status.text = returnStatus
    }
    
    /* could have a prepare for segue which 
        would happen after segue is clicked */
    
    override func viewWillAppear(animated: Bool) {
        println("viewWillAppear in Docs")
        status.text = returnStatus
    }
    
    override func viewDidAppear(animated: Bool) {
        println("viewDidAppear in Docs")
    }
    
    @IBAction func returnToDocs(segue: UIStoryboardSegue) {
        println("return to docs")
    }
    
    @IBAction func buttonPress(sender: AnyObject) {
        editorViewController = self.storyboard!.instantiateViewControllerWithIdentifier("editor") as EditorViewController
        if (editorViewController != nil) {
            presentViewController(editorViewController!, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

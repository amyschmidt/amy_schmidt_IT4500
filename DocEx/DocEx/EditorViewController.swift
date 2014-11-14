//
//  EditorViewController.swift
//  DocEx
//
//  Created by Amy Schmidt on 11/13/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {

    var status = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        println("Editor view did load")
        // Do any additional setup after loading the view.
    }

    @IBAction func save(sender: AnyObject) {
        println("save")
        
        //code that saves 
        status = "save"
        
        performSegueWithIdentifier("docs", sender: self)
    }
    
    
    @IBAction func cancel(sender: AnyObject) {
        println("cancel")
        
        status = "cancel"
        
        performSegueWithIdentifier("docs", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //you cannot assume that the view objects for the destViewController will exist, must do things in viewDidLoad in destViewController
        println("preparing in editor for segue")
        
        println(segue.identifier!)
        
        let destViewController = segue.destinationViewController as DocsViewController
        
        if (status == "save") {
            destViewController.returnStatus = "Saved New Document"
        }
        else {
            destViewController.returnStatus = "Cancelled Operation"

        }
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

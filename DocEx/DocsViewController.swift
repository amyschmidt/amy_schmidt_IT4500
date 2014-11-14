//
//  DocsViewController.swift
//  DocEx
//
//  Created by Amy Schmidt on 11/13/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit

class DocsViewController: UIViewController {

    var returnStatus = "none"
    
    @IBOutlet weak var status: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        println("Docs view did load")
        
        status.text = returnStatus
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

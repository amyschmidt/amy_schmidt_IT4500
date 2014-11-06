//
//  ViewController.swift
//  ImageViewerPractice
//
//  Created by Amy Schmidt on 11/4/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "babyhusky.png")
        imageView = UIImageView(image:image)
        imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size:image!.size)
        scrollView.addSubview(imageView)
        scrollView.contentSize = image!.size
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


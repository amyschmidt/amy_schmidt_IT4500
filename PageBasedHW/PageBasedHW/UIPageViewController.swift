//
//  UIPageViewController.swift
//  PageBasedHW
//
//  Created by Amy Schmidt on 11/10/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit

class UIPageViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    var loopPages: Bool = true
    
    var myPageViewController: UIPageViewController!
    var pageIdentifiers:[String]!
    var pages:[UIViewController]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set storyboard identifiers
        pageIdentifiers = ["PageA", "PageB",  "PageC", "PageD"]
        
        //load pages
        pages = []
        
        for pageIdentifier in pageIdentifiers {
            var page = self.storyboard!.instantiateViewControllerWithIdentifier(pageIdentifier) as UIViewController
            pages.append(page)
        }
        
        myPageViewController = UIPageViewController(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
        myPageViewController.delegate = self
        myPageViewController.dataSource = self
        
        let currentViewController = pages[0]
        let viewControllers: NSArray = [currentViewController]
        myPageViewController.setViewControllers(viewControllers, direction: .Forward, animated: false, completion: {done in })
        
        self.addChildViewController(self.myPageViewController)
        self.view.addSubview(self.myPageViewController.view)
        
        self.view.gestureRecognizers = self.myPageViewController.gestureRecognizers
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func pageViewController(pageViewController: UIPageViewController, spineLocationForInterfaceOrientation orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation {
        
        let currentViewController = pageViewController.viewControllers[0] as UIViewController
        let viewControllers: NSArray = [currentViewController]
        pageViewController.setViewControllers(viewControllers, direction: .Forward, animated: true, completion: {done in })
        
        pageViewController.doubleSided = false
        return .Min
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let indexPosition = indexPositionForCurrentPage(pageViewController)
        
        if (indexPosition == -1) {
            return nil
        }
        
        var prevIndexPosition = indexPosition - 1
        
        if (prevIndexPosition < 0) {
            if (loopPages) {
                prevIndexPosition = pages.count - 1
            } else {
                return nil
            }
        }
        
        return pages[prevIndexPosition]
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let indexPosition = indexPositionForCurrentPage(pageViewController)
        
        if (indexPosition == -1) {
            return nil
        }
        
        var nextIndexPosition = indexPosition + 1
        
        if (nextIndexPosition > pages.count - 1) {
            if (loopPages) {
                nextIndexPosition = 0
            } else {
                return nil
            }
        }
        
        return pages[nextIndexPosition]
    }
    
    func indexPositionForCurrentPage(pageViewController: UIPageViewController) -> Int {
        let currentViewController = pageViewController.viewControllers[0] as UIViewController
        
        for (index, page) in enumerate(pages) {
            if (currentViewController == page) {
                return index
            }
        }
        
        return -1
    }


}

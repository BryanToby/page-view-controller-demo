//
//  NewPageViewController.swift
//  PageViewController
//
//  Created by Bryan Lazaro Cusihuamán on 21/07/16.
//  Copyright © 2016 Bryan Lazaro Cusihuamán. All rights reserved.
//

import UIKit

class NewPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var pagesImage = ["shaman","sniper","tauren"]
    var pagesLabel = ["Shaman","Sniper","Tauren"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
    
        let starView = self.viewControllerAtIndex(0)
        setViewControllers([starView!], direction: .Forward, animated: true, completion: nil)
    }
    
    
    
    func viewControllerAtIndex(index :Int) -> ViewController?
    {
        if index == NSNotFound || index < 0 || index >= pagesImage.count {
            return nil
        }
        
        if let viewControl = storyboard?.instantiateViewControllerWithIdentifier("ViewController") as? ViewController {
            
            viewControl.imageName = pagesImage[index]
            viewControl.labelText = pagesLabel[index]
            viewControl.index = index
            
            return viewControl
            
        }
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        var index = (viewController as! ViewController).index
        
        index--
        
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! ViewController).index
        
        index++
        
        return self.viewControllerAtIndex(index)
        

    }
    
}






















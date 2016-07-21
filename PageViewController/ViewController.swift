//
//  ViewController.swift
//  PageViewController
//
//  Created by Bryan Lazaro Cusihuamán on 21/07/16.
//  Copyright © 2016 Bryan Lazaro Cusihuamán. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelHeader: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    var labelText = ""
    var imageName = ""
    var index = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelHeader.text = labelText
        imageView.image = UIImage(named: imageName)
        pageControl.currentPage = index
        
        
        
        
    }
    



}


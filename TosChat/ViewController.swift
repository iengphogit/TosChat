//
//  ViewController.swift
//  TosChat
//
//  Created by Iengpho on 11/2/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sc: UIScrollView!
    
    override func viewDidLoad() {
        
        sc.frame = self.view.frame
        sc.contentSize = CGSize(width: self.view.frame.size.width, height: 1000)
        sc.translatesAutoresizingMaskIntoConstraints = true
        self.view.addSubview(sc)
        
    }
     

    
    
}


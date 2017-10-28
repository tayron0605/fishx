//
//  ViewController.swift
//  TestFramework
//
//  Created by fang tairan on 2017/10/22.
//  Copyright © 2017年 Tayron. All rights reserved.
//

import UIKit
import MyFrameWork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openXib(_ sender: Any) {
        MyFramework.openVCFromXib()
    }

    @IBAction func openStoryboard(_ sender: Any) {
        MyFramework.loadVCFromStoryboard()
    }
    @IBAction func loadimage(_ sender: Any) {
        let image = MyFramework.loadImage()
        print(image.size)
        
    }
}


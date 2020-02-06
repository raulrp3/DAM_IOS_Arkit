//
//  ViewController.swift
//  DAM_IOS_ARkit
//
//  Created by raul.ramirez on 06/02/2020.
//  Copyright © 2020 Raul Ramirez. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var mSceneview: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.mSceneview.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
    }


}


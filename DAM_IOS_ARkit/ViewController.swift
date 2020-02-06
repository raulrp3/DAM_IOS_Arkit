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
        
        self.mSceneview.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.mSceneview.session.run(configuration)
        
        //Activar iluminación.
        self.mSceneview.autoenablesDefaultLighting = true
    }

    @IBAction func playAction(_ sender: Any) {
        //let node = SCNNode()
        //Cubo.
        //node.geometry = SCNBox(width: 0.05, height: 0.05, length: 0.05, chamferRadius: 0.005)
        
        //Cápsula.
        //node.geometry = SCNCapsule(capRadius: 0.1, height: 0.3)
        
        //Cono.
        //node.geometry = SCNCone(topRadius: 0.1, bottomRadius: 0.1, height: 0.2)
        
        //Esfera.
        //node.geometry = SCNSphere(radius: 0.2)
        
        //Cilindro.
        //node.geometry = SCNCylinder(radius: 0.08, height: 0.1)
        
        //Torus.
        //node.geometry = SCNTorus(ringRadius: 0.08, pipeRadius: 0.02)
        
        //Pirámide.
        //node.geometry = SCNPyramid(width: 0.2, height: 0.1, length: 0.2)
        
        //node.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        //node.geometry?.firstMaterial?.specular.contents = UIColor.orange
        
        //Creamos puntos de forma aleatoria para la posición de la figura.
        /*let x = self.randomNumbers(first: -0.3, second: 0.3)
        let y = self.randomNumbers(first: -0.3, second:0.3)
        let z = self.randomNumbers(first: -0.3, second:0.3)
        node.position = SCNVector3(x, y, z)
        self.mSceneview.scene.rootNode.addChildNode(node)*/
    }
    
    @IBAction func restartAction(_ sender: Any) {
        self.restarSession()
    }
    
    func restarSession(){
        self.mSceneview.session.pause()
        
        self.mSceneview.scene.rootNode.enumerateChildNodes{(node, _) in
            node.removeFromParentNode()
        }
        self.mSceneview.session.run(configuration, options: [.resetTracking, .removeExistingAnchors])
    }
    
    //Función que genera un número aleatorio entre dos números pasados como parámetros.
    func randomNumbers(first: CGFloat, second: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(first - second) + min(first, second)
    }
}


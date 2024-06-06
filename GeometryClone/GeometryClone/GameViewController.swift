//
//  GameViewController.swift
//  GeometryClone
//
//  Created by Aluno Tmp on 23/05/2024.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        scene.scaleMode = .aspectFill
        
        let sKView = view as! SKView
        sKView.showsFPS = true
        sKView.showsNodeCount = true
        sKView.showsPhysics = true
        sKView.ignoresSiblingOrder = true
        sKView.presentScene(scene)
            }



    override var prefersStatusBarHidden: Bool {
        return true
    }
}

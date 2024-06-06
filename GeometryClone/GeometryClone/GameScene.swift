//
//  GameScene.swift
//  GeometryClone
//
//  Created by Aluno Tmp on 23/05/2024.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        setupNodes()
    }
}

extension GameScene {
    func setupNodes() {
        createBG()
        createGround()
    }
    
    func createBG() {
        let bg = SKSpriteNode(imageNamed: "back")
        bg.anchorPoint = .zero
        bg.position = .zero
        bg.zPosition = -1.0
        addChild(bg)
    }
    
    func createGround() {
        for i in 0...2 {
            let ground = SKSpriteNode(imageNamed: "ground")
            ground.name = "Ground"
            ground.anchorPoint = .zero
            ground.zPosition = 1.0
            ground.position = CGPoint(x: CGFloat(i)*ground.frame.width, y: 0.0)
            addChild(ground)
        }
    }
}

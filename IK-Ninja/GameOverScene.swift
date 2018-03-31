//
//  GameOverScene.swift
//  IK-Ninja
//
//  Created by Main Account on 9/30/16.
//  Copyright © 2016 Ken Toh. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {
    override func didMove(to view: SKView) {

        let label = SKLabelNode(fontNamed:"Chalkduster")
        label.text = "Game Over"
        label.fontSize = 65
        label.position = CGPoint(x:frame.midX, y:frame.midY)
        addChild(label)

        run(.sequence([
            .wait(forDuration: 1.0),
            .run{
                let scene = GameScene(fileNamed:"GameScene")
                scene!.scaleMode = .aspectFill
                scene!.size = self.size
                self.view?.presentScene(scene!, transition: .fade(withDuration: 1.0))
            }]))
    }
}

//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Jeremy Burnham on 3/8/15.
//  Copyright (c) 2015 Jeremy Burnham. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {

    override func didMoveToView(view: SKView) {
        
        let background = SKSpriteNode(imageNamed:"MainMenu")
        background.position = CGPoint(x:self.size.width/2, y:self.size.height/2)
        self.addChild(background)
        
    }
    
    func sceneTapped() {
        let myScene = GameScene(size:self.size)
        myScene.scaleMode = scaleMode
        let reveal = SKTransition.doorwayWithDuration(1.5)
        self.view?.presentScene(myScene, transition: reveal)
    }
    
    #if os(iOS)
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)  {
        sceneTapped()
    }
    #else
    override func mouseDown(theEvent: NSEvent) {
        sceneTapped()
    }
    #endif
}

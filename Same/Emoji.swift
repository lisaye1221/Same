//
//  GameScene.swift
//  Same
//
//  Created by Lisa on 7/20/17.
//  Copyright © 2017 Lisa Ye. All rights reserved.
//

import SpriteKit
import GameplayKit




class Emoji: SKScene {
    
    
    
    var girl:SKSpriteNode!
    
    required init?(coder aDecoder: NSCoder) {
        
        /* Call parent initializer e.g. SKSpriteNode */
        super.init(coder: aDecoder)
        
        /* Enable touch on button node */
        self.isUserInteractionEnabled = true
    }
    
    
    
    override func didMove(to view: SKView) {
        

        
        girl = self.childNode(withName: "girl") as! SKSpriteNode
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        
        print("works")
               for touch in touches{
                  let node = atPoint(touch.location(in: self))
    
                   node.removeFromParent()
    
               }
        
    }

    
    
}

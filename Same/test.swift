//
//  Emoji.swift
//  Same
//
//  Created by Lisa on 7/21/17.
//  Copyright © 2017 Lisa Ye. All rights reserved.
//

import SpriteKit
import GameplayKit

class test: SKScene {
  
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        self.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        
        
        self.removeFromParent()
//        for touch in touches{
//            let node = atPoint(touch.location(in: self))
//            
//            node.removeFromParent()
//            
//        }
        
    }
    
    
}




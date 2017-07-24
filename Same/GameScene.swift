//
//  GameScene.swift
//  Same
//
//  Created by Lisa on 7/20/17.
//  Copyright © 2017 Lisa Ye. All rights reserved.
//

import SpriteKit




class GameScene: SKScene {
    
  
    var topTimer: SKLabelNode!
    var bottomTimer: SKLabelNode!
    var timeLimit: CFTimeInterval = 60
    let fixedDelta: CFTimeInterval = 1.0 / 60.0
    
    var image: SKReferenceNode!
    var LikeYoSon:SKReferenceNode!
    
    var girl:SKSpriteNode!
    var veryMad: SKSpriteNode!
    var veryAngry: SKSpriteNode!
    var tired: SKSpriteNode!
    var thinking: SKSpriteNode!
    var cryLaugh: SKSpriteNode!
    var suprised: SKSpriteNode!
    var bigLaugh: SKSpriteNode!
    var smile: SKSpriteNode!
    var sleeping: SKSpriteNode!
    var shySmile: SKSpriteNode!
    var sad: SKSpriteNode!
    var ahYes: SKSpriteNode!
    var palm: SKSpriteNode!
    var veryScared: SKSpriteNode!
    var ok: SKSpriteNode!
    var crying: SKSpriteNode!
    var highFive: SKSpriteNode!
    var loveEye: SKSpriteNode!
    var flushFace: SKSpriteNode!
    var rollEye: SKSpriteNode!
    var noMouth: SKSpriteNode!
    var dead: SKSpriteNode!
    var disgusted: SKSpriteNode!
    var heartbreak: SKSpriteNode!
    var blowKiss: SKSpriteNode!
    var hug: SKSpriteNode!
    var neutral: SKSpriteNode!
    var scared: SKSpriteNode!
    var confused: SKSpriteNode!
    
    
    var topDisplay: SKNode!
    var bottomDisplay: SKNode!
    
  
    
    override func didMove(to view: SKView) {
        
        topTimer = childNode(withName: "topTimer") as! SKLabelNode
        bottomTimer = childNode(withName: "bottomTimer") as! SKLabelNode
        
        topDisplay = childNode(withName: "topDisplay")
        bottomDisplay = childNode(withName: "bottomDisplay")
        
        image = childNode(withName: "image") as! SKReferenceNode
    
        LikeYoSon = childNode(withName: "LikeYoSon") as! SKReferenceNode
    
        girl = childNode(withName: "//girl") as! SKSpriteNode
        
        veryMad = childNode(withName: "//veryMad") as! SKSpriteNode
        veryAngry = childNode(withName: "//veryAngry") as! SKSpriteNode
        tired = childNode(withName: "//tired") as! SKSpriteNode
        thinking = childNode(withName: "//thinking") as! SKSpriteNode
        cryLaugh = childNode(withName: "//cryLaugh") as! SKSpriteNode
        suprised = childNode(withName: "//suprised") as! SKSpriteNode
        bigLaugh = childNode(withName: "//bigLaugh") as! SKSpriteNode
        smile = childNode(withName: "//smile") as! SKSpriteNode
        sleeping = childNode(withName: "//sleeping") as! SKSpriteNode
        shySmile = childNode(withName: "//shySmile") as! SKSpriteNode
        sad = childNode(withName: "//sad") as! SKSpriteNode
        ahYes = childNode(withName: "//ahYes") as! SKSpriteNode
        palm = childNode(withName: "//palm") as! SKSpriteNode
        veryScared = childNode(withName: "//veryScared") as! SKSpriteNode
        ok = childNode(withName: "//ok") as! SKSpriteNode
        crying = childNode(withName: "//crying") as! SKSpriteNode
        highFive = childNode(withName: "//highFive") as! SKSpriteNode
        loveEye = childNode(withName: "//loveEye") as! SKSpriteNode
        flushFace = childNode(withName: "//flushFace") as! SKSpriteNode
        rollEye = childNode(withName: "//rollEye") as! SKSpriteNode
        noMouth = childNode(withName: "//noMouth") as! SKSpriteNode
        dead = childNode(withName: "//dead") as! SKSpriteNode
        disgusted = childNode(withName: "//disgusted") as! SKSpriteNode
        heartbreak = childNode(withName: "//heartbreak") as! SKSpriteNode
        blowKiss = childNode(withName: "//blowKiss") as! SKSpriteNode
        hug = childNode(withName: "//hug") as! SKSpriteNode
        neutral = childNode(withName: "//neutral") as! SKSpriteNode
        scared = childNode(withName: "//scared") as! SKSpriteNode
        confused = childNode(withName: "//confused") as! SKSpriteNode
        
    }
    
    
   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        
        
        for touch in touches{
            
            if touch.location(in: self).y < 293  {// bottom
            
            let node = atPoint(touch.location(in: self))
            if let name = node.name {
                if name != "LikeYoSon" {
                    let newEmoji = node.copy()
                    bottomDisplay.addChild(newEmoji as! SKNode)
                    node.removeFromParent()
                }
            }
            else {
                return
            }
                
            }
            else if touch.location(in: self).y > 293 {
                
                let node = atPoint(touch.location(in: self))
                if let name = node.name {
                    if name != "topEmoji" {
                        let newEmoji = node.copy()
                        topDisplay.addChild(newEmoji as! SKNode)
                        node.removeFromParent()
                    }
                }
                else {
                    return
                }
                
                
            }
            
        }//end of for loop
        
        
    }//end of function
    
    func computeScore(){
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        print("works")
        
        if timeLimit > 0 {
       timeLimit -= fixedDelta
        topTimer.text = "\(Int(timeLimit))"
        bottomTimer.text = "\(Int(timeLimit))"
        }
        else {
            timeLimit = 0
        }
        
        
    }
    
    
}

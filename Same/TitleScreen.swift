//
//  TitleScreen.swift
//  Same
//
//  Created by Lisa on 7/20/17.
//  Copyright © 2017 Lisa Ye. All rights reserved.
//

//
//  MainMenu.swift
//  PeevedPenguins
//
//  Created by Lisa on 7/19/17.
//  Copyright © 2017 Lisa Ye. All rights reserved.
//

import SpriteKit


class TitleScreen: SKScene {
    
    //UI Connection
    var beginButton: MSButtonNode!
    
    override func didMove(to view: SKView) {
        //set up scene here
        
        //UI connection
        beginButton = self.childNode(withName: "beginButton") as! MSButtonNode
        
        //Allow the button to run when tapped
        beginButton.selectedHandler = {
            self.loadGame()
        }
    }
    
    
    func loadGame() {
        // 1) Grab reference to our SpriteKit view
        guard let skView = self.view as SKView! else {
            print("Could not get SKview")
            return
        }
        
        // 2) Load Game scene
        guard let scene = GameScene(fileNamed:"GameScene") else {
            print("Could not make GameScene, check the name is spelled correctly")
            return
        }
        
        // 3) Ensure correct aspect mode
        scene.scaleMode = .aspectFill
        
        //Show debug
        skView.showsDrawCount = true
        skView.showsFPS = true
        
        // 4) Start game scene
        skView.presentScene(scene)
    }
    
    
    
    
}//CLOSING BRACKETS FOR THE CLASS DON'T TOUCH





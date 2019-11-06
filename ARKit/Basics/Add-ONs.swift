//
//  Created by Francis Jemuel Bergonia on 11/5/19.
//  Copyright © 2019 XIApps, Inc. All rights reserved.
//


    private func addCubes() {
        
        // initialize Cube
        let cube = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.blue
        cube.materials = [material]
        
        // set node
        let cubeNode = SCNNode()
        cubeNode.geometry = cube
        cubeNode.position = SCNVector3(0.0, 0.0, -3.0)
        
        // add action
        let rotation = SCNAction.rotateBy(x: 0.0, y: 2 * .pi, z: 0, duration: 2)
        let repeatRotation = SCNAction.repeatForever(rotation)
        cubeNode.runAction(repeatRotation)
        
        // set the cube to the view
        sceneView.scene.rootNode.addChildNode(cubeNode)
        
    }


    // add text label on top of the chosen node or object
    private func addText() {
        let text = SCNText(string: planetName.capitalized, extrusionDepth: 1)
        text.font = UIFont(name: "futura", size: 16)
        text.flatness = 0
        let scaleFactor = 0.1 / text.font.pointSize
        textNode.scale = SCNVector3(scaleFactor, scaleFactor, scaleFactor)
        textNode.geometry = text
        let max = textNode.boundingBox.max.x
        let min = textNode.boundingBox.min.x
        let midpoint = -((max - min) / 2 + min) * Float(scaleFactor)
        textNode.position = SCNVector3(midpoint, 0.35, 0)
        //baseNode.addChildNode(textNode)
    }
    
    // add ship that rotates to an object or node
    private func addShip() {
        let orbitAction = SCNAction.rotateBy(x: 0, y: 2 * .pi, z: 0, duration: 6)
        let repeatOrbit = SCNAction.repeatForever(orbitAction)
        
        let wait = SCNAction.wait(duration: 1)
        let shipUpAction = SCNAction.move(to: SCNVector3(-0.35, 0.2, 0), duration: 2)
        shipUpAction.timingMode = .easeInEaseOut
        let shipDownAction = SCNAction.move(to: SCNVector3(-0.35, -0.2, 0), duration: 2)
        shipDownAction.timingMode = .easeInEaseOut
        let upDown = SCNAction.sequence([shipUpAction, wait, shipDownAction])
        let repeatUpDown = SCNAction.repeatForever(upDown)
        
        let scene = SCNScene(named: "art.scnassets/ship.scn")
        if let shipNode = scene?.rootNode.childNode(withName: "ship", recursively: true) {
            shipNode.scale = SCNVector3(0.2, 0.2, 0.2)
            shipNode.position = SCNVector3(-0.35, 0, 0)
            let rotateNode = SCNNode()
            baseNode.addChildNode(rotateNode)
            rotateNode.addChildNode(shipNode)
            rotateNode.runAction(repeatOrbit)
            shipNode.runAction(repeatUpDown)
        }
    }

    
    // add a 3D planet object that rotates
    private func addPlanet() {
        let planet = SCNSphere(radius: 0.3)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: planetName)
        planet.materials = [material]
        planetNode.geometry = planet
        baseNode.addChildNode(planetNode)
        let planetRotate = SCNAction.rotateBy(x: 0, y: 2 * .pi, z: 0, duration: 25)
        let repeatRotate = SCNAction.repeatForever(planetRotate)
        planetNode.runAction(repeatRotate)
    }
    

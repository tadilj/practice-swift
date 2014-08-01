import SpriteKit


class GameScene: SKScene {
    var _background:SKSpriteNode = SKSpriteNode()
    var _selectedNode:SKSpriteNode = SKSpriteNode()
    let _kAnimalNodeName:String = "movable"
    
    // Constructor
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        
        // Adding background color
        self.backgroundColor = SKColor.blueColor()
        
        // Adding the other pictures
        var imageNames:NSArray = NSArray(array: ["bird", "turtle", "cat", "dog"])
        for i in 0..<imageNames.count{
            // Fetch the image name
            var imageName:NSString = imageNames.objectAtIndex(i) as NSString
            // Create a new sprite
            var animalSprite:SKSpriteNode = SKSpriteNode(imageNamed: imageName)
            // Set the name
            animalSprite.name = _kAnimalNodeName
            
            // Calculate the position of the new sprite
            var offsetFraction = 120 * (i+1)
            // Find the new point
            var x:CGFloat = CGRectGetMinX(self.frame) + CGFloat(offsetFraction)
            var y:CGFloat = CGRectGetMidY(self.frame)
            var position = CGPointMake(x, y)
            // Setting the new position for the sprite
            animalSprite.position = position
            // Add the sprite to the view
            self.addChild(animalSprite)
        }
        
    }
    
    override func didMoveToView(view: SKView) {
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        // Select the node
        var touch: AnyObject! = touches.anyObject()
        var positionInScene = touch.locationInNode(self)
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}

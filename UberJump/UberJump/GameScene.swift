
import SpriteKit

var backgroundNode: SKNode = SKNode()

class GameScene: SKScene {
    init(size: CGSize) {
        super.init(size: size)
        self.initialization()
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        self.initialization()
        
    }
    
    override func didMoveToView(view: SKView) {
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func initialization(){
        self.backgroundColor = UIColor(red:1, green: 1, blue: 1, alpha: 1)
    
        // Go through all the background images
        for i in 0...20{
            var formatter : NSString = NSString(format: "%02d", i+1)
            var backgroundName = "Background\(formatter)"
            
            var node = SKSpriteNode(imageNamed: backgroundName)
            node.anchorPoint = CGPointMake(0.5, 0.0)
            node.position = CGPointMake(CGFloat(160), CGFloat(i * 64))
            
            backgroundNode.addChild(node)
        }
        
        // Add the background node to the scene
        self.addChild(backgroundNode)
    }
}

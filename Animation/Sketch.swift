import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position for x
        x = 0
        // Set starting position for y
        y = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position for x
        x += 1
        // Change position for y
        let a = -0.008
        let h = 250.0
        let k = 500.0
        
        y = Int(a * (Double(x)-h) * (Double(x)-h) + k)
        
        
        // Draw an ellipse in the bottom left of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
        
    }
    
}

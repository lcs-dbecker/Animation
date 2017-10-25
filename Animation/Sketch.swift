import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Change is position
    var dx : Int        // difference in x
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        
        
    // Set the difference for x
        dx = 3
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        
        
        canvas.fillColor = Color.black
        // Change position
        x += dx
        
        // Check position and reverse course
        // If we go off the right edge of the screen
        if x > 475 {
            dx = -3
        }
       // Check position and reverse course
        if x < 25 {
            dx = 3
                
            }
            
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
    }
    
}

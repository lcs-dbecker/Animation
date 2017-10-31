import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var dx :Int
    var dy :Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, toButNotIncluding: 501)
        
        // Starting position for y
        y = random(from: 0, toButNotIncluding: 501)
      
        // Set the starting change
        dx = 1
        dy = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {

        // Change in position
        x += dx
        y += dy
        
        // Make is bounce right
        if x > 500{
            dx += -1
        }
        //Make it bounce down
        if y > 500{
            dy += -1
        }
 // let it bounce left
        if x < 0{
            dx += 1
        }
        
    // let it bounce right
        if y < 0 {
            dy += 1
        }
        
        // Draw background
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
        
    }
    
}

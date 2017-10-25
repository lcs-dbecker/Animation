import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    //Change in position
    var offset : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // Set difference for x
        offset = 1
        
        // no borders
        canvas.drawShapesWithBorders = false
            
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += offset
        
        // Draw fifth ellipse
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        
        
        
        // Draw fourth ellipse
        canvas.fillColor = Color.blue
         canvas.drawEllipse(centreX: 500 - x, centreY: 350, width: 50, height: 50)
        
        
        // Draw third ellipse
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
        
        // Draw second ellipse
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: 500 - x, centreY: 150, width: 50, height: 50)
      
        
        
        
        // Draw first ellipse
        canvas.fillColor = Color.yellow
         canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        if x > 25 {
            offset = 1
        }
        
      
            
    }

}
        
    
    


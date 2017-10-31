import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Change in position
    var offset : Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // set difference for x and y
        offset = 3
        
        // no borders
        canvas.drawShapesWithBorders = false
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // change position
        x += offset
        
        // draw first line
        
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: x, width: 50, height: 50)
        
        //draw second line
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX:500-x , centreY: 500-x, width: 50, height: 50)
        
        //draw third line
        
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: 0+x, centreY: 500-x, width: 50, height: 50)
        
        // Change position
        x += 1
        
  
        
    }
    
}

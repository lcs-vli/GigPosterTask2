//: # Gig Poster 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![runaways-no-grid](runaways-no-grid.png "The Runaways")
 ![runaways-with-grid](runaways-with-grid.png "The Runaways")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)

//set the canvas colour
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0,y: 0), width: 400, height: 600)


//draw the square in the bottom left corner
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.borderColor = black
for rentangleXPosition in stride(from: 0, through: 400, by: 400){
    for rectangleYPosition in stride(from: 0, through: 400, by: 400){
        for rectangle in stride(from: 30, through: 400, by: 110){
            canvas.drawRectangle(at: Point(x:rentangleXPosition, y:rectangleYPosition), width: rectangle, height: rectangle, anchoredBy: AnchorPosition.centre, borderWidth: 14)
        }
    }
}

//draw the square in the bottom left corner
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.borderColor = beige
for rentangleXPosition in stride(from: 0, through: 400, by: 400){
    for rectangleYPosition in stride(from: 0, through: 400, by: 400){
        for rectangle in stride(from: 80, through: 400, by: 110){
            canvas.drawRectangle(at: Point(x:rentangleXPosition, y:rectangleYPosition), width: rectangle, height: rectangle, anchoredBy: AnchorPosition.centre, borderWidth: 14)
        }
    }
}

//draw the pink block
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0,y: 400), width: 400, height: 200)

//print title
canvas.textColor = beige
canvas.drawText(message: "the runaways", at: Point(x:15,y:410), size: 53)

//print the lines above the title
canvas.textColor = black
canvas.drawText(message: "friday", at: Point(x:14,y:550), size: 10)
canvas.drawText(message: "august 19 1977", at: Point(x:14,y:535), size: 10)
canvas.drawText(message: "tickets $4.50", at: Point(x:14,y:520), size: 10)
canvas.drawText(message: "with", at: Point(x:120,y:550), size: 10)
canvas.drawText(message: "special guests", at: Point(x:120,y:535), size: 10)
canvas.drawText(message: "wolfgang", at: Point(x:120,y:520), size: 10)
canvas.drawText(message: "at ben h. lewis hall", at: Point(x:270,y:550), size: 10)
canvas.drawText(message: "3443 orange st.", at: Point(x:270,y:535), size: 10)
canvas.drawText(message: "riverside, california", at: Point(x:270,y:520), size: 10)

/*
//print the reference lines
for shuline in 1...7{
    canvas.drawLine(from: Point(x: shuline * 50,y: 0), to: Point(x: shuline * 50,y: 600))
}

for hengline in 1...11{
    canvas.drawLine(from: Point(x: 0,y: hengline * 50), to: Point(x: 400,y: hengline * 50))
}
*/
/*:
 ## Use Source Control
 
 Remember to commit and push your work before 12:05 PM on Wednesday, January 15, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas


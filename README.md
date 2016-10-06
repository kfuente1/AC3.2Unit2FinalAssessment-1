# AC3.2 Unit 2 Final Assessment

# Setup

1. Fork repo which has only a README.md and .gitignore.
2. Clone **your fork** locally to your laptop.
3. Create a project into that cloned directory. Name it AC3.2Unit2FinalAssessment.
4. Work on the assignment.
5. Upon completion, commit locally.

	```
	git commit -a -m "I'm done"
	```
7. Push to your repo.

	```
	git push origin master
	```
8. Go to github and make a pull request.

# The Assessment

### Overview

Your app is to have two tabs. The first tab should contain a table that displays a list of Crayon names
with their backgrounds set to the corresponding color. The second tab is to have a single view controller
that has a Slider, a Stepper, a Text Field, and a Label whose values are all sync'd together. These two tabs
don't have any relationship to each other, other than being tabs in the same app.

> **Auto Layout**
>
> Although we've been working on Auto Layout a lot, and although it's _very important_, 
> it's not a part of this assessment. You can use it if you like and if it doesn't slow you down.
> You will be assessed on it later.

1. Build the View Controller architecture as depicted in this image:

	![Storyboard](storyboard.png)
	There are a variety of ways to accomplish this. You can start with single view application (I would), 
	or a tabbed application. Any one of them is fine, and any no matter how you do it, you will have to
	delete, rearrange/reconnect and/or embed view controllers.

1. Create and connect the _necessary_ custom sub-classes for appropriate view controllers 
using New>>File>>Cocoa Touch File, followed by setting the custom class in the Identity Inspector. 

1. Make a Swift file (not a Cocoa Touch Class) named ```CrayonData.swift``` and put this code in it:

	```swift
import Foundation

let crayolaColors = [
    [
        "hex": "#EFDECD",
        "name": "Almond",
        "rgb": "(239, 222, 205)"
    ],
    [
        "hex": "#CD9575",
        "name": "Antique Brass",
        "rgb": "(205, 149, 117)"
    ],
    [
        "hex": "#FDD9B5",
        "name": "Apricot",
        "rgb": "(253, 217, 181)"
    ],
    [
        "hex": "#78DBE2",
        "name": "Aquamarine",
        "rgb": "(120, 219, 226)"
    ],
    [
        "hex": "#87A96B",
        "name": "Asparagus",
        "rgb": "(135, 169, 107)"
    ],
    [
        "hex": "#FFA474",
        "name": "Atomic Tangerine",
        "rgb": "(255, 164, 116)"
    ],
    [
        "hex": "#FAE7B5",
        "name": "Banana Mania",
        "rgb": "(250, 231, 181)"
    ],
    [
        "hex": "#9F8170",
        "name": "Beaver",
        "rgb": "(159, 129, 112)"
    ],
    [
        "hex": "#FD7C6E",
        "name": "Bittersweet",
        "rgb": "(253, 124, 110)"
    ],
    [
        "hex": "#000000",
        "name": "Black",
        "rgb": "(0,0,0)"
    ],
    [
        "hex": "#ACE5EE",
        "name": "Blizzard Blue",
        "rgb": "(172, 229, 238)"
    ],
    [
        "hex": "#1F75FE",
        "name": "Blue",
        "rgb": "(31, 117, 254)"
    ],
    [
        "hex": "#A2A2D0",
        "name": "Blue Bell",
        "rgb": "(162, 162, 208)"
    ],
    [
        "hex": "#6699CC",
        "name": "Blue Gray",
        "rgb": "(102, 153, 204)"
    ],
    [
        "hex": "#0D98BA",
        "name": "Blue Green",
        "rgb": "(13, 152, 186)"
    ],
    [
        "hex": "#7366BD",
        "name": "Blue Violet",
        "rgb": "(115, 102, 189)"
    ]
]
	```
1. Make another swift file, and name it ```Crayon.swift``` and put this code in it:

	```swift
	import Foundation

	class Crayon {
		var name: String
		var red: Double
		var green: Double
		var blue: Double
	    
		init(name: String, red: Double, green: Double, blue: Double) {
		    self.name = name
		    self.red = red
		    self.green = green
		    self.blue = blue
		}
	    
		convenience init?(fromDict:[String:Any]) {
		    if let name = fromDict["name"] as? String,
		        let hex = fromDict["hex"] as? String {
		        
		        var hexComponents = [String]()
		        
		        // index(after:) will have us skip the initial hash character
		        var start = hex.index(after: hex.startIndex)
		        
		        // go over the characters 3x (there are 6 total)
		        for _ in 0..<3 {
		            // pick off the first two by making this range
		            let range = start..<hex.index(start, offsetBy: 2)
		            
		            // then substring copies out that range
		            let hexComponent = hex.substring(with: range)
		            
		            // put the string in the array
		            hexComponents.append(hexComponent)
		            
		            // move our start point past the copied characters
		            start = hex.index(start, offsetBy: 2)
		        }
		        
		        if let r = Double("0x"+hexComponents[0]), let g = Double("0x"+hexComponents[1]), let b = Double("0x"+hexComponents[2]) {
		            self.init(name: name, red: r/255.0, green: g/255.0, blue: b/255.0)
		        }
		        else {
		            return nil
		        }
		    }
		    else {
		        return nil
		    }
		}
	}
	```

1. In the appropriate method of your Table View Controller subclass you'll need to load in the crayon data 
with this block. You'll need to create a property of type ``` [Crayon]``` in that class called ```crayons```.

	```swift
	// crayolaColors is a global variable defined in CrayonData.swift 
	// so it should be visible from any point in your code
	for c in crayolaColors {
	    if let crayon = Crayon(fromDict: c) {
	        crayons.append(crayon)
	    }
	}
	```
Set the background color of the rows by building a UIColor from with the crayon's red, green, and blue 
properties and set the textLabel's text to the color name. You **don't** need to subclass the Table View Cell
to do this. Just use the default ```UITableViewCell```.

1. Implement ```prepare(for:)``` (prepare for segue) on the table view controller in order to pass the
color information over to the detail view controller (the rightmost in the screen shot above), which I named
Crayon View Controller. This view controller should have a label with the color name and color its background
just as you did with the table cell row.

1. In the other tab build your view controller, connecting outlets and actions as appropriate to 
the Slider, Stepper, Text Field controls and Label in order to live update any value set on one to
update all the others.

1. Comment the methods you end up implementing, noting whether it's a target-action method or 
a delegate method.

1. Extra credit. Create a convenience initializer on the Crayon model that uses the "rgb" field 
to populate the red, green, blue properties, instead of the hex field. Currently the code is parsing
the hex string by skipping the pound sign, reading two hex characters, converting to Int and then 
dividing by 255. A similar strategy could be employed on the rgb field. Prove it works by changing the 


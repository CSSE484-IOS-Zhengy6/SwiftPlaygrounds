// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7

//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals

//can be null
var optionalFloat : Float?
var requiredFloat : Float



var implictlyUnwrappedOptionals : Float!




type(of:  optionalFloat)
type(of: requiredFloat)

optionalFloat=5.0
print("optionalFloat = \(optionalFloat)")

//warning that there might be error in this code. This will crash since force unwrapping optionalFloat that do not have value will crash.
print("optionalFloat = \(optionalFloat!)")

//use the exclamation point implicity
implictlyUnwrappedOptionals=12
print("implicitlyUnwrappedOptional \(implictlyUnwrappedOptionals)")


var someOtherFloat: Float=implictlyUnwrappedOptionals


let dave = "Dave"
let number : Int? = 7

var optionalThatIsNotNull : Float = Float(number!)

print(optionalThatIsNotNull)

var optionalThatIsNull: Int? = Int(dave)
print(optionalThatIsNull)
//print("requiredFloat \(requiredFloat)")#fileLiteral(resourceName: "03_Collections.playground")

// Optionals with forced unwrapping










// Part 2.
// Views in a Playground + Optional Chaining

import UIKit

var b=UIButton(frame: CGRect(x:0,y:0,width: 100, height: 100))
b.backgroundColor=UIColor.red
b.setTitle("Press Me", for: UIControl.State.normal)

print(b.titleLabel)
print(b.titleLabel!.text)
//optional chaining. If this exist, keep going, if not abandon ship.
print(b.titleLabel?.text )
//Hey I know this is a label and it definitely has text that is not null.
print(b.titleLabel!.text!)


// Optional Binding
if let tempVariable=number{
    print("Temp varaible exist \(tempVariable)")
}else{
    
}


if let tempVariable=Int(dave){
    print("Temp varaible exist \(tempVariable)")
}else{
    
}





//casting
var someAny : Any = 7
var someInt: Int

var anotherInt : Int?
var anotherAny : Any


someInt = someAny as! Int // as! means force unwrap, I as a developer know this will work (if not the case CRASH!)
anotherAny=someInt as Any // as means this by definition will work the compiler knows it too (simple is fine)
anotherInt = someAny as? Int //as? means this might work, it might not. I don't know either. If it fails safely write nil.

// Implicitly Unwrapped Optionals

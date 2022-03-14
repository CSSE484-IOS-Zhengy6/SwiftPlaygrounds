// ********************** Basic function

//func stringRepeater(originalString: String, repeatCount:Int) -> String{
//    var repeatedString = ""
//    for _ in 0..<repeeatCount{
//        repeatedString+= originalString
//    }
//    return repeatedString
//}
//
//

//by default the argument is named argument
// stringRepeater(originalString: "Ho! ", repeatCount: 3)
// stringRepeater(originalString: "New York ", repeatCount: 2)



//// ********************** Basic function without external argument names
//stringRepeater("Ho! ")
//stringRepeater("New York ",  repeatCount: 2)



//allow us to use positional argument
//func stringRepeater( _ originalString: String, repeatCount:Int = 2) -> String{
//    var repeatedString = ""
//    for _ in 0 ..< repeatCount{
//        repeatedString += originalString
//    }
//    return repeatedString
//}
//
//
//
//
//
//
//
//
//
//




// ********************** Optional parameters
// stringRepeater("Ho! ")
// stringRepeater("New York ", repeatCount: 3)


// ********************** Differenter internal and external names for arguments

//alternateCount for external name, repeatCount as internal name
//func stringRepeater( _ originalString: String, alternateCount repeatCount:Int = 2) -> String{
//    var repeatedString = ""
//    for _ in 0 ..< repeatCount{
//        repeatedString += originalString
//    }
//    return repeatedString
//}
//

// stringRepeater("Ho! ")
// stringRepeater("New York ", alternateCount: 3)

func stringRepeater( _ originalString: String, alternateCount repeatCount:Int = 2) -> String{
    var repeatedString = ""
    for _ in 0 ..< repeatCount{
        repeatedString += originalString
    }
    return repeatedString
}
    


// ********************** Returning multiple values
func stringRepeater2( _ originalString: String, alternateCount repeatCount:Int = 2) -> (String, String){
    var repeatedString = ""
    for _ in 0 ..< repeatCount{
        repeatedString += originalString
    }
    return (repeatedString, repeatedString.uppercased())
}
    


// var example1: String
// var example2: String
// (example1, example2) = stringRepeater2("New York ", repeatCount: 2)
// example1
// example2


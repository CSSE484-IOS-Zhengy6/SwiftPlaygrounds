var values = [10, 5, 2, 8, 3, 6, 1, 1000]

// Verbose Closure
var numValuesOver5=values.reduce(0, {(runningTotal: Int, currentValue : Int) ->Int in
    //print(runningTotal)
    return currentValue>5 ? runningTotal+1 : runningTotal
})

print(numValuesOver5)


// Closure parameter name shorthand and trailing closure

numValuesOver5=values.reduce(0) {(runningTotal: Int, currentValue : Int) ->Int in
    return currentValue>5 ? runningTotal+1 : runningTotal
}



numValuesOver5=values.reduce(0) {(runningTotal, currentValue) in
    return currentValue>5 ? runningTotal+1 : runningTotal
}


//one liner defaults to return. Most common
numValuesOver5=values.reduce(0) {(runningTotal, currentValue) in
     currentValue>5 ? runningTotal+1 : runningTotal
}

numValuesOver5=values.reduce(0) {
    $1>5 ? $0+1 : $0
}


// A Closure using a closure for a variable



func numValuesOverLimit(_ values : [Int], limit : Int) -> Int {
    
        values.reduce(0) {(runningTotal, currentValue) in
            
            //this reference to the limit is a closure.
            return currentValue>limit ? runningTotal+1 : runningTotal
        }
}


numValuesOverLimit(values, limit: 5)
numValuesOverLimit(values, limit: 9)


// Comparing func and closure syntax
func asAFunc(_ someString: String, _ someNumber: Int) -> String {
  return String(repeating: someString, count: someNumber)
}
let asAClosure = {(_ someString: String, _ someNumber: Int) -> String in
  return String(repeating: someString, count: someNumber)
}
asAFunc("Holy ", 3)
asAClosure("Holy ", 3)

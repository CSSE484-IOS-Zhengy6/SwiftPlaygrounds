var myVariable=42     //explicitly typed
let myConstant=50     //inferred type

//myConstant=100
myVariable=100
type(of: myVariable)
type(of:myConstant)

let scores=[75,52,93,87,41,83]

//swift has deep final--cannot change constant even an object constant. In java, the pointer doesn't change.
//score.append(0);

var totalPassing=0
for score in scores{
    if score>=60{
            totalPassing+=1
    }
}


//inclusive
for i in 1...3{
    print(i)
}

for i in 0..<3{
    print(i)
}

print(scores.count)

for i in 0..<scores.count{
        print(scores[i])
}


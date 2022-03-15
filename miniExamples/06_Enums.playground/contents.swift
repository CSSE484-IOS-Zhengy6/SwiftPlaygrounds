// Basic enum

//enum Weekday{
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}

//
//var today : Weekday = Weekday.tuesday


enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var today: Weekday = .tuesday


switch today{
case .monday, .tuesday, .thursday:
    print("YOu have class")
case .wednesday:
    print("Weekend wednesday")
default:
    print("Its the weekend")
}



// Rawvalues
enum State : Int{
//    try to set the logical value
    case ready=0
    case set
    case go
}

var raceState = State.go
type(of: raceState)
raceState.rawValue

var nextRaceState = State(rawValue: 1)
print(nextRaceState!.rawValue)
type(of: nextRaceState)
nextRaceState?.rawValue



// Associated values and functions
enum HomeworkStatus{
    case noHomework
    case inProgress(Int, Int)
    case done
    func simpleDescription() -> String{
        switch self{
            
        case .noHomework:
            return "No homework"
        case .inProgress(let numComplete, let total):
            return "You finished \(numComplete) out of \(total)"
        case .done:
            return "Your finished your HW"
        }
    }
}


var myHwStatus = HomeworkStatus.inProgress(6, 10)
var myHwStatus2 = HomeworkStatus.inProgress(8, 100)




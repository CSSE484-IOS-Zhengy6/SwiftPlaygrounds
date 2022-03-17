

// TODO: Create the TicTacToeGame class
class TicTacToeGame : CustomStringConvertible{
    var board : [MarkType]
    var state : GameState
    
    enum MarkType : String{
        case x="X"
        case o="O"
        case none="-"
    }
    
    enum GameState : String{
        case xTurn = "X's Turn"
        case oTurn = "O's Turn"
        case xWon = "X Wins!"
        case oWon = "O Wins!"
        case tie = "Tie Game"
    }
    
    init(){
        board=[MarkType]()
        for _ in 0..<9{
            board.append(.none)
        }
        
        board=[MarkType](repeating: .none, count:9)
        state = .xTurn
    }
    
    func pressedSquareAt(at index : Int){
        if (index<0 || index>8){
            print("Invalid index \(index)")
            return
        }
        
        if board[index] != .none{
            print("This square is not empty")
            return
        }
        
        switch state{
        case .xTurn:
            board[index] = .x
            state = .oTurn
        case .oTurn:
            board[index] = .o
            state = .xTurn
            
        default:
            print("This game has been won. No more moves allowed")
            return
        }
        
        checkForWin()
    }

    func checkForWin(){
        //check for a tie beofre checking for a win.
        if(!board.contains(.none)){
            state = .tie
        }
        var lineOf3=[String]()
        
        lineOf3.append(getGameString([0,1,2]))
        lineOf3.append(getGameString([3,4,5]))
        lineOf3.append(getGameString([6,7,8]))
        
        lineOf3.append(getGameString([0,3,6]))
        lineOf3.append(getGameString([1,4,7]))
        lineOf3.append(getGameString([2,5,8]))
        
        lineOf3.append(getGameString([0,4,8]))
        lineOf3.append(getGameString([2,4,6]))
        
        for lineOf3 in lineOf3{
            if lineOf3 == "XXX"{
                state = .xWon
            }
            
            if lineOf3 == "OOO"{
                state = .oWon
            }
        }
    }
    
    func getGameString(_ indices: [Int] = [0,1,2,3,4,5,6,7,8]) -> String{
        var gameString=""
        for index in indices{
            gameString+=board[index].rawValue
        }
        
        return gameString
    }
    
    var description: String{
        return "\(state.rawValue) \(getGameString())"
    }
    
    
    
}


/* ----------------- Official Playground testing ----------------- */
var game = TicTacToeGame()
game.pressedSquareAt(at: 0)
game.pressedSquareAt(at: 1)
game.pressedSquareAt(at: 3)
game.pressedSquareAt(at: 2)
game.pressedSquareAt(at: 6)


var game2 = TicTacToeGame()
game2.board = [.x, .x, .o,
                .none, .none, .none,
                .o, .none, .none]
game2.pressedSquareAt(at:8)
game2.pressedSquareAt(at:4)


var game3 = TicTacToeGame()
game3.board = [.x, .x, .o,
    .o, .o, .x,
    .x, .o, .none]
game3.pressedSquareAt(at: 8)


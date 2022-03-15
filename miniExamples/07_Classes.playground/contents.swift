// Simple class
class BankAccount : CustomStringConvertible{

    
    var name : String
    var balance : Double
    
    init (name: String, balance: Double){
        self.name=name
        self.balance=balance
    }
    
    func deposit (_ amount:Double){
         balance += amount
    }
    
    func withdraw(_ amount: Double){
        balance-=amount
    }
    
    
    var description: String {
        get{
            return "\(name): $\(balance)"
        }
    
    }
}







var daveAccount = BankAccount(name: "Dave", balance: 100.00)
daveAccount.deposit(50)
daveAccount.withdraw(10)






// Subclass
class AtmBankAccount : BankAccount{
    var withdrawFee : Double
    
    init(name : String, balance : Double, withdrawalFee: Double){
        self.withdrawFee=withdrawalFee
        super.init(name: name, balance: balance)
    }
    
//    should call the designated constructor with information
    convenience init(){
        self.init(name: "Anonymous", balance: 0.0, withdrawalFee: 2.0)
    }
    
    override convenience init(name: String, balance: Double){
        self.init(name: name, balance: balance, withdrawalFee:2.0)
    }
    
    override func withdraw(_ amount: Double){
        balance-=withdrawFee
        super.withdraw(amount)
    }
    
}


var s=AtmBankAccount(name: "John", balance: 2.0)

var t=AtmBankAccount()

var b=AtmBankAccount(name:"Travis", balance: 2.0, withdrawalFee: 10)

//var bobAccount = AtmBankAccount()
//bobAccount.deposit(100)
//bobAccount.withdraw(40)






class BankAccount{
    private var balance: Double
    init(){
        balance=0
    }
    init(_ amount: Double){
        balance=amount
    }
    func deposit(_ amount: Double){
        balance+=amount
    }
    func getBalance()->Double{
        return balance
    }
}

var ba=BankAccount()
// print(ba.balance)
print(ba.getBalance())
ba=BankAccount(1000)
print(ba.getBalance())
ba.deposit(200)
print(ba.getBalance())
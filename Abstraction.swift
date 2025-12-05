protocol  Payment {
    func pay(_ amount:Double); 
}

class UPI: Payment{
    var balance: Double
    init(_ balance: Double){
        self.balance=balance
    }
    func pay(_ amount: Double){
        if(amount>balance){
            print("cannot pay as balance is limited")
            return
        }
        print("Paying through UPI, paying \(amount)")
        balance=balance-amount
        print("Balance is \(balance)")
    }
}

class Card: Payment{
    var balance: Double
    init(_ balance: Double){
        self.balance=balance
    }
    func pay(_ amount: Double){
        if(amount>balance){
            print("cannot pay as balance is limited")
            return
        }
        print("Paying through Card, paying \(amount)")
        balance=balance-amount
        print("Balance is \(balance)")
    }
}

var payment: Payment = UPI(10000);
payment.pay(1000);
payment = Card(9000)
payment.pay(1000)
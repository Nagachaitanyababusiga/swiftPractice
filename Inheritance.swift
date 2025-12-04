class Parent{
    var age: Int
    init(_ age: Int){
        self.age=age
    }
    func printage(){
        print("parent's age: \(age)")
    }
}

class Child: Parent{
    override func printage(){
        print("child's age is \(age)")
    }
}

var c=Parent(100)
print(c.age)
c=Parent(10)
print(c.age)
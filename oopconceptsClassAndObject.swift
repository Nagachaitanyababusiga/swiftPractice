
class BasicClass{
    var count: Int
    init(_ count: Int){
        self.count=count
    }
    func display(){
        print("This class has a count: \(count)")
    }
}

var obj=BasicClass(2);
obj.display()
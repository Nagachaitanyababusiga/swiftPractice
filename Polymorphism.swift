class Shape{
    var side: Double
    init(_ side: Double){
        self.side=side;
    }
    func getArea()-> Double{
        return 0.0;
    }
}

class Circle: Shape{
    override func getArea()->Double{
        return 3.14*side*side;
    }
}

let circle: Shape = Circle(100);
print(circle.getArea())
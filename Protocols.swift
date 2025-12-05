protocol Vehicle {
    func drive()
}

class Car: Vehicle{
    func drive(){
        print("I'm now driving a car!!")
    }
}

var car: Car = Car()
car.drive()
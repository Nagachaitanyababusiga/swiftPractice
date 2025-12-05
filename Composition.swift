class Engine{
    func start(){
        print("Engine started!!");
    }
}

class Car{
    let engine = Engine()
    func drive(){
        engine.start()
        print("Car is moving!!")
    }
}

let car: Car = Car()
car.drive()
class Counter{
    static var count = 0
    init(){
        Counter.count+=1
    }
}

let a: Counter = Counter();
print(Counter.count)
let b: Counter = Counter();
print(Counter.count)

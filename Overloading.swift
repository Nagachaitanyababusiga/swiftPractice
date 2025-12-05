class Test{
    func test(_ a: Int,_ b: Int,_ c: Int){
        print("a: \(a), b: \(b), c: \(c)")
    }
    func test(_ a: Int,_ b: Int){
        print("a: \(a), b: \(b)")
    }
}

var t: Test = Test()
t.test(1,2);
t.test(1,2,3);
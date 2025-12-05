struct Student {
    var name: String
    var age : Int
    var standard : Int

    init(_ name: String,_ age: Int,_ standard: Int){
        self.name=name;
        self.age=age;
        self.standard=standard
    }
}

let students: [Student] = [
     Student("A",1,1),
     Student("B",1,1),
     Student("C",1,1),
     Student("D",1,1),
     Student("E",1,1),
     Student("F",1,1),
     Student("G",1,1),
     Student("H",1,1),
     Student("I",1,1),
     Student("J",1,1),
     Student("K",1,1)
]


//closure
var topStudentsFilter : (Student) -> Bool = { student in
    return student.name >= "H"
}

var newlst = students.filter(topStudentsFilter)

print(newlst)

//trailing closure
newlst = students.filter({student in
    return student.name >= "H"
})

print(newlst)

//short hand notation
newlst = students.filter({ $0.name >= "H" })

print(newlst)

let studentRankings = students.sorted{$0.name > $1.name}

print(studentRankings)



//closure

let greet = {(name: String) -> String in
     "Hello \(name) !!"
}

print(greet("Swift"))

//call backs
func fetch(complete: (String) -> Void ){
    complete("Data loaded");
}


fetch{ string in 
    print(string)
}

//completion Handlers

func DownloadFile(url: String, completion : (Bool) -> Void){
    completion(true);
}

var completion: (Bool) -> Void = { flag in 
    print(flag ? "Download success":"Download failed");
}

DownloadFile(url: "File1.txt",completion: completion)

//swift button actions
/*
Button("Click me"){
    print("button tapped")
}
*/

// Functional programming
let numbers : Array<Int> = [1,2,3,4,5,6]

let filtered = numbers.filter{$0%2==0}

print("Filtered: \(filtered)")

let mapped = numbers.map{$0*$0}
print("Mapped: \(mapped)")

let reduced = numbers.reduce(0){$0+$1}
print("Sum is : \(reduced)")
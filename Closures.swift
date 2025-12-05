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
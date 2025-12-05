//?Optional
var name: String?
name="Nagababu"
print(name!)

//!(forced unwarp)
name=nil
// print(name!) //causes error

//safe unwarping
if let value = name{
    print(value)
}else{
    print("The name is a nil value")
}

//Nil-Coalescing (??)
var str : String? = "UK";
// str = nil
let country = str ?? "India";
print(country)

//guard let

struct MyError: Error{}

guard let test = str else{
    print("There is no country");
    throw MyError()
}

//optional chaining
struct grandChild {
    var age = 10;    
}

struct Child {
    var child : grandChild?    
}

struct me{
    var child: Child?
}

let msg=me(child: Child(child: grandChild(age: 10)))
// print(msg.child?.child?.age)

//arrays

var arr=["a","b","c","d"]

/*
for i in arr{
    print("\(i)", terminator: " ")
}
*/

for i in stride(from: 0, through: 100, by:2){
    arr.append(String(Character(UnicodeScalar(i%26+97)!)));
}

print(arr)

//dictonary

let dict1 :[String: String] = ["a": "A","b": "B"]
print(dict1)

for (i,j) in dict1{
    print("i: \(i), j: \(j)")
}

/*
for i in dict1.keys{
    print("i: \(i), j: \(dict1[i])")
}
*/

print(arr.isEmpty)
print(dict1.isEmpty)

arr.sort()
print(arr)

let temp=dict1.sorted{$0.key>$1.key}
print(temp)

//struct and class
struct Suser {
    var user: Int
}

class Cuser{
    var user: Int
    init(_ user: Int){
        self.user=user;
    }
}

var suser: Suser = Suser(user: 1)
var cuser: Cuser = Cuser(2)

var a=suser
a.user=3
print(a)
print(suser)

var b=cuser
b.user=4
//print(b.user ?? 0)
//print(cuser.user ?? 0)

struct check{
    var count: Int;
    mutating func inc(){
        self.count=self.count+1
    }
    func get()->Int{
        return count
    }
}

var ch=check(count: 0)
ch.inc()
print(ch.get())
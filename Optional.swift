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
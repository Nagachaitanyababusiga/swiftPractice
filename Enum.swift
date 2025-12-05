//normal enum

enum Direction{
    case north
    case south
    case east
    case west
}

print(Direction.north)

//enum with raw values

enum day_with_nums: Int{
    case monday = 0
    case tuesday = 1
    case wednesday = 2
    case thursday = 3
    case friday = 4
    case saturday = 5
    case sunday = 6
}

print(day_with_nums.sunday)
print(day_with_nums.sunday.rawValue)

//enum with associated values

enum person{
    case person1(username: String)
    case person2(username: String)
}

print(person.person1(username: "Naga"))
print(person.person2(username: "Babu"))

//enum with switch
enum loginResult{
    case success(username: String)
    case failure(errorMsg: String)
}

let result = loginResult.success(username: "Nagachaitanyababu")

switch result{
    case .success(let username):
        print("Logged in successully, welcome \(username)")
    case .failure(let errorMsg):
        print("Sorry the error is \(errorMsg)")
}
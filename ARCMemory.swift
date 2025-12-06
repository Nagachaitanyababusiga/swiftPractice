// no retention cycle
class Father{
    var son: Son?
    deinit {
        print("The father is now denitialized")
    }
}

class Son{
    var father: Father?
    deinit {
        print("The son is now denitialized")
    }
}

var fa: Father? = Father()
var so: Son? = Son()


fa=nil
so=nil
print("No retention cycle")

// retention cycle;

fa?.son=so
so?.father=fa

fa=nil
so=nil

//weak
class Person{
    var laptop: Laptop?
    deinit{
        print("Person is now deleted");
    }
}

class Laptop{
    weak var person: Person?
    deinit {
        print("Laptop is deleted")
    }
}

var lap: Laptop? = Laptop();
var pe: Person? = Person();

pe?.laptop=lap
lap?.person=pe

pe=nil
print(lap?.person)

//un owned

class Mouth{
    var teeth: Teeth?
    deinit {
        print("mount got cancer")
    }
}

class Teeth{
    var mouth: Mouth?
    deinit {
        print("Teeth got decayed")
    }
}

var t: Teeth? = Teeth()
var m: Mouth? = Mouth()

m?.teeth=t;
t?.mouth=m;

m=nil

print(t?.mouth)
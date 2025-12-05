final class LogManager{
    func login(){
        print("hello loggedIn , but cannot create a subclass to it")
    }
}

/*
class Subclass : LogManager{

}
*/

var lm = Subclass()
lm.login()
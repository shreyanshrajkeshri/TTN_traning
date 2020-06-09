import UIKit


//protocol Identifiable {
//    var id: Int { get set}
//}
//
//struct User: Identifiable {
//    var id: Int
//}
//
//func displayID(thing: Identifiable) {
//    print("My ID is \(thing.id)")
//}
//
//var user = User(id: 1234)


//displayID(thing: user)

//protocol SomeProtocol {
//    // Some properties
//    // Some functions
//}
//
//protocol DescriptionPrintable {
//    func printSomething()
//}
//
//
//struct A: DescriptionPrintable {
//    func printSomething() {
//         print(" I am just a struct A")
//    }
//}
//
//struct B: DescriptionPrintable {
//    func printSomething() {
//         print(" I am just a struct B")
//    }
//}
//
//let a = A()
//
//struct C {
//    let a: B
//
//    func printObjDesc() {
//        a.printSomething()
//    }
//
//}
//
//
//struct D {
//    let obj: DescriptionPrintable
//    func printObjDesc() {
//        obj.printSomething()
//    }
//}
//
//
//let d = D.init(obj: A())
//d.printObjDesc()
//
//let d1 = D.init(obj: B())
//d1.printObjDesc()
//



protocol DescriptionPrintable {
    func printSomeThing()
}


struct A: DescriptionPrintable {
    func printSomeThing() {
        print("This is Struct A")
    }
}

struct B: DescriptionPrintable {
    func printSomeThing() {
        print("This is Struct B")
    }
}

struct C {
    var a: B
    
    func printObjDesc() {
        a.printSomeThing()
    }
}

struct D {
    var obj: DescriptionPrintable
    
    func printObjDesc() {
        obj.printSomeThing()
    }
}


let d = D(obj: A())
d.printObjDesc()

let d1 = D(obj: B())
d1.printObjDesc()



//protocol AType {
//    var email: String { get }
//    var accessToken: String { get }
//}
//
//struct AModel: AType {
//    var email: String
//    var accessToken: String
//}
//
//protocol SocialAuthorizable {
//    func login(completion: (_ obj: AType) -> Void)
//}
//
//class LoginVC1 {
//    let socialAuthorizable: SocialAuthorizable
//
//    init(_ socialA: SocialAuthorizable) {
//        self.socialAuthorizable = socialA
//    }
//
//    func login() {
//        socialAuthorizable.login { obj in
//            print("email1 =====>\(obj.email), token1 =======\(obj.accessToken)")
//        }
//    }
//}
//
//struct FBLogin1: SocialAuthorizable {
//    func login( completion: (_ obj: AType) -> Void) {
//        let a = AModel(email: "a@a.com", accessToken: "132132")
//        completion(a)
//    }
//}
//
//struct GLogin1: SocialAuthorizable {
//    func login( completion: (_ obj: AType) -> Void) {
//        let a = AModel(email: "b@b1.com", accessToken: "132132")
//        completion(a)
//    }
//}
//
//let loginVC1 = LoginVC1.init(GLogin1())
//loginVC1.login()
//
//let loginVC2 = LoginVC1.init(FBLogin1())
//loginVC2.login()







struct demo: Equatable {
    var id: Int
    var name: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        
        return lhs.id==rhs.id
    }
}

var d2 = demo(id: 2, name: "demo2")
var d3 = demo(id: 3, name: "demo3")

print(d2 == d3)


protocol someDemo {
    func Demo()
}

struct demo2: someDemo {
    
    var a: Int
    
    func Demo() {
        print(self.a)
    }
}

var a = demo2(a: 20)
a.Demo()


func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
    print(parameterName)
}

someFunction(argumentLabel: 5)




protocol AType {
    var email: String { get }
    var accessToken: String { get }
}

struct AModel: AType {
    var email: String
    var accessToken: String
}

protocol SocialAuthorizable {
    func login(completion :(_ obj: AType) -> Void)
}

class LoginVC {
    let socialAuthorizable: SocialAuthorizable
    
    init(social: SocialAuthorizable) {
        self.socialAuthorizable = social
    }
    
    func login() {
        socialAuthorizable.login { obj in
            print("Email : \(obj.email) and AccessToken : \(obj.accessToken)")
        }
    }
}

struct FBLogin: SocialAuthorizable {
    func login(completion: (AType) -> Void) {
        let a = AModel(email: "FB@mail.com", accessToken: "FBAccessToken")
        completion(a)
    }
}

struct GLogin: SocialAuthorizable {
    func login(completion: (AType) -> Void) {
        let a = AModel(email: "G@mail.com", accessToken: "GAccessToken")
        completion(a)
    }
}


var LoginVC1 = LoginVC(social: FBLogin())
LoginVC1.login()



//MARK: For Numbers

protocol Incrementable where Self: Numeric {
    func increment()
}

extension Incrementable {
    func increment() {
        print(self+1)
    }
}

protocol Multiplayable where Self: Numeric {
    mutating func multiplyBy10()
}

extension Multiplayable {
    func multiplyBy10() {
        print(self*10)
    }
}

protocol NumbericModifiable: Incrementable, Multiplayable{}

extension Int: NumbericModifiable {}

5.increment()
10.multiplyBy10()

enum FirstError : Error {
    case initialisationFailed
}

class FirstClass {
    var abc: String?
    
    init?(xyz : String?) throws {
        
        if xyz!.isEmpty {
            throw FirstError.initialisationFailed
        } else {
        self.abc = xyz
        }
    }
    
}



do {
    _ = try FirstClass(xyz: nil)
} catch FirstError.initialisationFailed {
    print("Object Not Initialized")
}





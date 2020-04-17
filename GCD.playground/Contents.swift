import UIKit

var str = "Hello, playground"


//DispatchQueue.global(qos: .userInteractive).async { // priority 1
//    for i in 0..<100 {
//        print("😍 \(i)")
//    }
//}
//
//
//DispatchQueue.global(qos: .userInitiated).async { // priority 2
//    for i in 0..<100 {
//        print("😈 \(i)")
//    }
//}
//
//DispatchQueue.global(qos: .background).async { // priority 4
//    for i in 0..<100 {
//        print("👹 \(i)")
//    }
//}
//
//DispatchQueue.global(qos: .utility).async { // priority 3
//    for i in 0..<100 {
//        print("😎 \(i)")
//    }
//}
//
//DispatchQueue.main.async {
//    for i in 0..<100 {
//        print("🤦‍♂️ \(i)")
//    }
//}


//priority is only between on global State not between global and main but when we use main and globalState.Background the main exceute first

// use heavy task on background and ui update in main

func doSomething() {
    for i in 0..<100 {
        print("🤦‍♂️ \(i)")
    }
}

//DispatchQueue(label: "Custom").async {
//
//  doSomething()
//
////    DispatchQueue.main.async {
////        for i in 0..<100 {
////            print("😎 \(i)")
////        }
////  }
//}
//
//DispatchQueue(label: "Custom_2", qos: .userInteractive, attributes: .concurrent, autoreleaseFrequency: .inherit, target: .none).async {
//
//    for i in 0..<100 {
//            print("😎 \(i)")
//        }
//}


let dispatchGroup = DispatchGroup()

let queue1 = DispatchQueue(label: "label_1")
let queue2 = DispatchQueue(label: "label_2")
let queue3 = DispatchQueue(label: "label_3")


queue1.async(group: dispatchGroup){
    print("queue1 Complete")
}

queue2.async(group: dispatchGroup){
    print("queue2 Complete")
}

queue3.async(group: dispatchGroup){
    print("queue3 Complete")
}

dispatchGroup.notify(queue: DispatchQueue.main) {
    print("All Task are Done")
}

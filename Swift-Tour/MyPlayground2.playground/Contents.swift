//: Playground - noun: a place where people can play

import UIKit

// Function and Closure

func hello(firstOne: String, secondOne: String) -> String {
    return "Hello \(firstOne) and \(secondOne)!"
}

hello(firstOne: "Anh", secondOne:"Ba")

// Func calling ưithout arg lb

func hello2(_ arg1: String, _ arg2: Int) ->String {
    return "Hi I am \(arg1), \(arg2) years-old"
}

hello2("Anh", 22)
hello2("Em", 30)


// Func with array arg
func printArray(_ arr: [Int]) -> Void {
    var s: String = ""
    for num in arr {
        s += String(num) + ","
    }
    print(s)
}

var arr = [0,1,2,3,4,5]
printArray(arr)


// Return multiple values

func cal(_ a: Int, _ b: Int) -> (sum: Int, mul: Int) {
    return (a+b, a*b)
}

var resultCal = cal(3,4)
print("Sum = \(resultCal.sum)")
print("Mul = \(resultCal.mul)")

// Colection

func sumInt(_ arg: Int...) -> Int {
    var sum :Int = 0
    for s in arg {
        sum += s
    }
    return sum
}
print("Sum collection = \(sumInt(1,2,3,4))")


// nested func

func sumOdd(_ arg: Int...) -> Int {
    func isOdd(_ n: Int) -> Bool {
        return n%2==0
    }
    var sum = 0
    for s in arg {
        sum += isOdd(s) ? s : 0
    }
    return sum
}
print("Sum odd collection = \(sumOdd(1,2,3,4))")

// func argument in func

func checkAndSum(list: [Int], checkFunc: (Int) -> Bool) -> Int {
    var sum = 0
    for s in list {
        sum += checkFunc(s) ? s : 0
    }
    return sum
}
func isEven(_ s : Int) -> Bool {
    return !(s % 2 == 0)
}
print("Check and Sum Even = \(checkAndSum(list: [1,2,3,4], checkFunc: isEven))")



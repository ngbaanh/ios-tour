//: Playground - noun: a place where people can play

import UIKit

//: Declations
let label = "my float = "
let myFloat: Float = 4
let labelFloat = label + String(myFloat)
print(labelFloat)

//: Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting
let calcualteInString: String = "1 + 1 makes \(1+1)"
print(calcualteInString)


//: arrays
var daysInWeek = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"]
print(daysInWeek)
daysInWeek[1] = "Tuesday"
print(daysInWeek)
var keyVal = [
    "key1" : "val1",
    "key2" : "val2"
]
keyVal["key3"] = "val3"
print(keyVal)

//: Control Flow
let numberArr = [1,2,3,4,5,6,7,8,9,10]
print(numberArr)
for num in numberArr {
    if num % 2 == 0 {
        print("\(num) is odd")
    } else {
        print("\(num) is even")
    }
}


var someStr: String? = "This is a String"
print(someStr == nil)


var someStr2: String? = "2nd string is me"
if let s = someStr2 {
    print(s)
} else {
    print("string is null")
}


//: another way to handle nil
let nickName: String? = "ngbaanh"
//: change this to nil and fullName will be set
let fullName: String = "Nguyen Ba Anh"
var sayHello = "Hello pro \(nickName ?? fullName)"
print(sayHello)


// SWITCH - CASE
var numberCard = 2 // change to another value to see
switch numberCard {
case 1:
    print("One")
case 2:
    print("Two")
case 3:
    print("Three")
case 4,5,6,7,8,9:
    print("Hey I am lazy now!")
default:
    print("nothing here")
    
}


// For in arrays
var arr = [ // pairs (name, value)
    "oddArr": [1,7,3,5],
    "evenArr": [2,8,6,4]
]
var max = 0
for (arrName, arrValues) in arr {
    for value in arrValues {
        if value > max {
            max = value
        }
    }
}
print("Max = \(max)")

// For in range
var sum = 0
for i in 0..<5 {
    sum += i
}
print("Sum = \(sum)")


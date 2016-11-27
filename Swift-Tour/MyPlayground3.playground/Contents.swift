//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Class and object

class Person {
    var name: String = ""
    var age: Int? = 0
    
    init(name: String) {
        self.name = name
    }
    
    func getPersonInfo() -> String {
        return "Name: \(self.name). \nAge: \(self.age)."
    }
}

class Student: Person {
    var studentId: String = ""
    var classId: String = ""
    init(name: String, studentId: String, classId: String) {
        super.init(name: name)
        self.studentId = studentId
        self.classId = classId
    }
    func getStudentInfo() -> String {
        return "Student ID: \(self.studentId).\nClass ID: \(self.classId)"
    }
}

var student = Student(name: "Nguyễn Bá Anh", studentId: "102120129", classId: "12T2")
student.age = 22
print(student.getPersonInfo())
print(student.getStudentInfo())



//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*
 * @author: Nguyen Ba Anh - baanh.nguyen@outlook.com
 * Swift Tour Exercise: Generic, Linked List & Stack.
 */

/**
 * Handle errors for stack
 */
enum StackError : Error {
    case stackEmpty     // if the stack currently has no element
    case stackFull      // if the stack currently reaches max-size
    case invalidSize    // if the stack is set by a size that was out of a given range, negative or too large.
} //.StackError

/**
 * Stack Node
 */
class Node<Template>
{
    var value: Template?
    var next: Node<Template>?
} //.Node<_>

/**
 * Stack Class
 */
class Stack<Template>
{
    var size: Int = 0
    var topNode: Node<Template> = Node<Template>()
    
    /* initialize an empty stack with max `size` slots for pushing elements */
    init(size: Int) throws
    {
        if (size <= 0 || size > 10) {
            throw StackError.invalidSize
        }
        self.size = size
        self.topNode.value = nil
        self.topNode.next = nil
    } //.init()
    
    /* print current stack */
    public func print() throws
    {
        if (self.size == 0 || self.topNode.value == nil) {
            throw StackError.stackEmpty
        }
        Swift.print("-----------------------------")
        Swift.print("Stack data of \(self.count())/\(self.size) elements:")
        var currentNode: Node<Template> = self.topNode
        while let _ = currentNode.value {
            // print() will cause error because it refers to self.print(), use global function Swift.print() instead
            Swift.print("-*[ \(currentNode.value) ]*-")
            currentNode = currentNode.next!
        }
        Swift.print("-----------------------------")
    } //.print()
    
    /* count the current number of elements in the stack */
    public func count() -> Int
    {
        var count: Int = 0
        var currentNode: Node<Template> = self.topNode
        while let _ = currentNode.value {
            count += 1
            currentNode = currentNode.next!
        }
        return count
    } //.count()
    
    /* push new element into the stack top */
    public func push(element: Template) throws
    {
        if self.count() == self.size {
            throw StackError.stackFull
        }
        let newNode: Node<Template> = Node<Template>()
        newNode.next = self.topNode
        newNode.value = element
        self.topNode = newNode
        Swift.print("element \(element) pushed!")
    } //.push()
    
    /* get top element of the stack */
    public func pop() throws -> Template
    {
        if self.count() == 0 {
            throw StackError.stackEmpty
        }
        let node: Node<Template> = self.topNode
        self.topNode = self.topNode.next!
        return node.value!
    } //.pop()
    
} //.Stack<_>


// TEST ZONE ===============================================

let SIZE = 5 // SIZE <= 0 or > 10 will cause error, change the range in Stack.init()

do {
    var myIntStack = try Stack<Int>(size: SIZE) // declare a stack with size of 5
    
    // Push something into the stack
    for s in 0..<SIZE {
        try myIntStack.push(element: s)
    }
    //try myIntStack.push(element: 6) // error
    //try myIntStack.push(element: 7) // error
    
    try myIntStack.print()
    
    // pop all
    for s in 0..<SIZE {
        print("<-- \(try myIntStack.pop()) popped!")
    }
    // pop nothing
    print("<-- \(try myIntStack.pop()) try to pop again, causes error!")
} catch let stackError as StackError {
    print("Error: \(stackError)")
}


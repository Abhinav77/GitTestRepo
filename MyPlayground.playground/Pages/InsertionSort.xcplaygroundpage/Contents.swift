//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


/*
 @fn Insertion sort is uses when number of elements is small. It can also be useful when input array is almost sorted, only few elements are misplaced in complete big array.
 
 Complexity - O(n*n)
 */

func insertionSort(inout items: [Int]) {
    let elementCount = items.count
    
    for outerCounter in 1 ..< elementCount {
        let currentElement = items[outerCounter]
        
        for innerCounter in 0 ..< outerCounter {
            if currentElement < items[innerCounter] {
                swap(&items[outerCounter], &items[innerCounter])
            }
        }
    }
}

var elements = [2, 3, 1, 5, 6, 0, 9, 8]

insertionSort(&elements)

print("\(elements)")

//: [Next](@next)

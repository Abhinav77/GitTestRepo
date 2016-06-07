//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func swapMe(inout item item1:Int , inout andItem item2: Int) {
    let temp = item1;
    item1 = item2
    item2 = temp
}

func bubbleSort(inout items: [Int]) {
    for _ in 0 ..< items.count  {
        for innerCounter in 0 ..< items.count - 1 {
            if items[innerCounter] > items[innerCounter + 1] {
                swap(&items[innerCounter], &items[innerCounter + 1])
            }
        }
    }
}

var elements = [2, 3, 1, 5, 6, 0, 9, 8]

bubbleSort(&elements)

print("\(elements)")


//: [Next](@next)

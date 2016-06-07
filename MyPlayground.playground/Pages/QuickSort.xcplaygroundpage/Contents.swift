//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


func partition(v: [Int], left: Int, right: Int) -> Int {
    var i = left
    for j in (left + 1) ..< (right + 1) {
        if v[j] < v[left] {
            i += 1
            (v[i], v[j]) = (v[j], v[i])
        }
    }
    (v[i], v[left]) = (v[left], v[i])
    return i
}

func quicksort(v: Int[], left: Int, right: Int) {
    if right > left {
        let pivotIndex = partition(v, left, right)
        quicksort(v, left, pivotIndex - 1)
        quicksort(v, pivotIndex + 1, right)
    }
}


//: [Next](@next)

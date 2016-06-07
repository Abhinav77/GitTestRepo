//: [Previous](@previous)

import Foundation

var str = "Hello, playground"



// To find the index of the element whose following element is less
func pivotIndexInArray(items: [Int], withStartIndex start:Int, andEndIndex end:Int) -> Int {
    if end < start {
        return -1
    }
    
    if end == start {
        return end
    }
    
    let mid = (end + start) / 2
    
    // Check if following element is small. If yes, then middle element index is pivot
    if mid < end && items[mid] > items[mid + 1] {
        return mid
    }
    
    // Check if preceeding element is big. If yes, then preceeding element index is pivot
    if mid > start && items[mid] < items[mid - 1] {
        return mid - 1
    }
    
    if items[start] >= items[mid] {
        return pivotIndexInArray(items, withStartIndex: start, andEndIndex: mid - 1)
    }
    
    return pivotIndexInArray(items, withStartIndex: mid + 1, andEndIndex: end)
}

pivotIndexInArray([5, 1, 2, 3, 4], withStartIndex: 0, andEndIndex: 4)


func binarySearch(items: [Int], withStartIndex start:Int, endIndex end:Int, forElement element: Int) -> Int {
    if end < start {
        return -1
    }
    
    let mid = (start + end) / 2
    
    if element == items[mid] {
        return mid
    }
    
    if element > items[mid] {
        return binarySearch(items, withStartIndex: mid + 1, endIndex: end, forElement: element)
    }
    
    return binarySearch(items, withStartIndex: start, endIndex: mid - 1, forElement: element)
}

binarySearch([1, 2, 3, 4, 5 , 6, 7, 8], withStartIndex: 0, endIndex: 7, forElement: 5)

func pivotedBinarySearch(items: [Int], forElement element : Int) -> Int {
    let pivotIndex = pivotIndexInArray(items, withStartIndex: 0, andEndIndex: items.count)
    
    if pivotIndex == -1 {
        return binarySearch(items, withStartIndex: 0, endIndex: items.count, forElement: element)
    }
    
    if element == items[pivotIndex] {
        return pivotIndex
    }
    
    if items[0] <= element {
        return binarySearch(items, withStartIndex: 0, endIndex: pivotIndex - 1, forElement: element)
    }
    
    return binarySearch(items, withStartIndex: pivotIndex + 1, endIndex: items.count, forElement: element)
}


pivotedBinarySearch([3, 4, 5, 1, 2], forElement: 5)


//: [Next](@next)

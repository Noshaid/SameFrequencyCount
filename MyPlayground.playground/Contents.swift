import UIKit
import PlaygroundSupport

func isValid(str: String) -> Bool {
    var dict = [String: Int]()
    if str.count != 0 {
        for char in str {
            var isKeyFind = false
            for key in dict.keys {
                if key == String(char) {
                    dict[key]! += 1
                    isKeyFind = true
                }
            }
            if !isKeyFind {
                dict[String(char), default: 0] += 1
            }
        }
        print(dict)
        let valArr = Array(dict.values)
        let allItemsEqual = valArr.dropLast().allSatisfy { $0 == valArr.last }
        return allItemsEqual ? true : false
    }
    return false
}

let str = "abcd"
print("Input: \(str)")
print("Is valid string: \(isValid(str: str))")


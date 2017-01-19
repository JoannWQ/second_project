//
//  ViewController.swift
//  SwiftTest
//
//  Created by QianCheng on 16/12/30.
//  Copyright © 2016年 QianCheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scoresArray = [75,43,103,87,12]
        var teamScore = 0
        for score in scoresArray {
            if score > 50 {
                teamScore += 3
            }else{
                teamScore += 1
            }
        }
        print(teamScore)
        
        // for in 遍历字典
        let interestingNumbers = ["Prime":[2,3,5,7,11,13],"Fibonacci":[36,1,2,3,5,8],"Square":[1,4,9,16,25]]
        var largest = 0
        var largestKind = ""
        
        for (kind,numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                    largestKind = kind
                }
            }
        }
        print("the largest is \(largest),the kind is \(largestKind)")
        
        print(greet(name: "Bob", day: "tuesday"))
        
        let increment = makeIncrementer()
        print(increment(7))
    
        //字符串
        let greeting = "Guten Tag!"
        print(greeting[greeting.startIndex])
        print(greeting[greeting.index(before: greeting.endIndex)])
        print(greeting[greeting.index(after: greeting.startIndex)])
        print(greeting[greeting.index(greeting.startIndex, offsetBy: 7)])
        
        var welcome = "hello"
        welcome.insert("!", at: welcome.endIndex)
        welcome.insert(contentsOf: " there".characters, at: welcome.index(before: welcome.endIndex))
        welcome.remove(at: welcome.index(before: welcome.endIndex))
        welcome.removeSubrange(welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex)
        print(welcome)
        
        //数组
        var nilArray = [Int]()
        var anotherArray = Array(repeating:0.0, count: 3)
        nilArray.append(3)
        anotherArray.insert(11, at: 0)
        for (ind, val) in anotherArray.enumerated() {
            print("Item \(String(ind + 1)): \(val)")
        }
        print(anotherArray.contains(12))
        
        //字典
        var dic = [String: String]()
        dic = ["key1": "value1", "key2": "value2", "key3": "value3"]
        dic["key4"] = "value4"
        dic["key2"] = "updateValue2"
        dic.updateValue("update3", forKey: "key3")
        dic.removeValue(forKey: "key2")
        print(dic)
        
        //结构体
        struct Point {
            var x = 0.0, y = 0.0
            mutating func moveByX(delX: Double, delY: Double){
                x += delX
                y += delY
            }
        }
        var somePoint = Point()
        somePoint.moveByX(delX: 2.0, delY: 3.0)
        print("The point is now at (\(somePoint.x), \(somePoint.y))")
        
        
    
        
        
        
        
    }
    
    // 函数
    func greet(name: String, day: String) -> String {
        return "Hello \(name),today is \(day)"
    }
    
    // 函数嵌套
    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
        return 1 + number
        }
        return addOne
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


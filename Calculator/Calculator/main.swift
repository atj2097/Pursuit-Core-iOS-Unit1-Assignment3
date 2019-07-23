//
//  main.swift
//  calculator
//
//  Created by Adam on 7/19/19.
//  Copyright © 2019 Adam All rights reserved.
//

import Foundation

var alphabet = "abcdefghijklmnopqrstuvwx4"
var alltheNumbers = [-99999999...9999999]
func basicMath() {
print("Hey! My name is Teresa, I am your calculator! Give me a math operation to do!👩🏼‍💼")
var userOperation = readLine()!
    print("Now enter in the numbers you want to calculate👩🏼‍💻")
let number = readLine()
    print("Calculating....")
//part1a
enum BasicMath: String  {
    case addition = "+"
    case subtraction = "-"
    case multiplication =  "*"
    case division = "/"
    func math(x: String?) {
        //var userInput1 = BasicMath.addition; BasicMath.subtraction ; BasicMath.multiplication ; BasicMath.division
        var digits = [Int]()
        var digitString = x?.split(separator: " ")
        
        for element in digitString!
        {
            var numberInt = Int(element)
            if (-9999999999999...999999999999).contains(numberInt!) {
                digits.append(numberInt!)
                //            continue
            }
            else {
                //            var digitString = text?.split(separator: " ")
                print("I can only work with numbers!No consecutive spaces or letters please!")
            }
        }
//        let c = BasicMath.init(rawValue: userOperation)
        switch self {
        case .addition:
//            if let response1 = number,
//                let response2 = number2,
//                let num1 = Int(response1),
//                let num2 = Int(response2) {
                var answer = digits[0] + digits[1]
                print("\(digits[0]) + \(digits[1]) = \(answer)")
            
        case .subtraction:
            
                var answer = digits[0] - digits[1]
                print("\(digits[0]) - \(digits[1]) = \(answer)")
            
        case .multiplication:

                var answer = digits[0] * digits[1]
                print("\(digits[0]) * \(digits[1]) = \(answer)")
            
        case .division:
    
                var answer = digits[0] / digits[1]
                print("\(digits[0]) / \(digits[1]) = \(answer)")
            
        }
    }
}
var currentOperation = BasicMath(rawValue: userOperation)
currentOperation!.math(x:number)
}



//part 1b
func randomMath() {
    print("Now let's play a game!Guess the operation! 💃🏼")
    var opperationArray = ["+", "-", "*", "/"]
    var randomOpperation = opperationArray.randomElement()
    
enum BasicMath: String  {
    case addition = "+"
    case subtraction = "-"
    case multiplication =  "*"
    case division = "/"


    func randomMath1()  {
        
//        print("Let's play a game!👩🏼‍💼 Press Y to start")
        var numberArray = [1,2,3,4,5,7,8,9,10]
        var eq = String()
        var userGuess = String()
switch self {
    
case .addition:
    let a = numberArray.randomElement()!
    let b = numberArray.randomElement()!
    var answer = a + b
    eq = "\(a) ? \(b) = \(answer)"
    print (eq)
    userGuess = readLine()!
    if userGuess == "+"{
        print("You guessed correctly!")
    }
    else {
        print("Try again!")
    }
case .subtraction:
    let a = numberArray.randomElement()!
    let b = numberArray.randomElement()!
    var answer = a - b
    eq = "\(a) ? \(b) = \(answer)"
    print (eq)
    userGuess = readLine()!
    if userGuess == "-"{
        print("You guessed correctly!")
    }
    else {
        print("Try again!")
    }
case .multiplication:
    let a = numberArray.randomElement()!
    let b = numberArray.randomElement()!
    var answer = a * b
    eq = "\(a) ? \(b) = \(answer)"
     print (eq)
    userGuess = readLine()!
    if userGuess == "*"{
        print("You guessed correctly")
    }
    else {
        print("Try again!")
    }

case .division:
    let a = numberArray.randomElement()!
    let b = numberArray.randomElement()!
    var answer:Double  = Double(a / b)
    eq = "\(a) ? \(b) = \(answer)"
    print (eq)
    userGuess = readLine()!
    if userGuess == "/"{
        print("You guessed correctly")
    }
    else {
        print("Try again!")
    }
}
}
}
    var currentOperation = BasicMath.init(rawValue: randomOpperation!)
    currentOperation!.randomMath1()
}



//part 2a
//FILTER
func myFilterGlobal() {
    var operationArray = [">" , "<" , "=" , ">=" , "<="]
    //print statements and inputs
    print("Enter in the set of numbers you want to  filter💁🏼‍♀️")
    var userCondition = readLine()
    
    if userCondition != nil {
        print("Enter in the comparion you would like to do filter these numbers with👩🏼‍💻")
    }
    var userOperation = readLine()
    
    if operationArray.contains(userOperation!) {
        print("Lastly, enter the number you would like to filter (\(userOperation!)) your number set by!🙇🏼‍♀️")
    }
    else {
        print("You can only enter >, < , =, >=,  or <= no extra places please!🙎🏼‍♀️")
        var userOperation = readLine()
        print("Lastly, enter the number you would like to filter (\(userOperation!)) your number set by!🙇🏼‍♀️")
        
    }
    var userNumber = readLine()
    
    //map function
    func myFilter(inputCondition: String?) -> [Int] {
        
        
        var mappedNumber = Int()
        var digitsOriginal = [Int]()
        var digitsFiltered = [Int]()
        
        var digitString = inputCondition!.split(separator: " ")
        
        for numbers in digitString {
            
            var numberInt = Int(numbers)
            
            if (-9999999999999...999999999999).contains(numberInt!) {
                
                digitsOriginal.append(numberInt!)
            }
        }
        
        if let response1 = userNumber,
            let num1 = Int(response1) {
            
            switch userOperation {
            case ">":
                for numbers in digitsOriginal {
                    if numbers > num1 {
                    digitsFiltered.append(numbers)
                    }
                }
                print("Filtering your number set👩🏼‍💻....")
                print(digitsFiltered)
                
            case "<":
                for numbers in digitsOriginal {
                    if  numbers < num1 {
                    digitsFiltered.append(numbers)
                    }
                    
                }
                print("Filtering your number set👩🏼‍💻....")
                print(digitsFiltered)
                
            case "=":
                for numbers in digitsOriginal {
                    if  numbers == num1 {
                    digitsFiltered.append(mappedNumber)
                }
                }
                print("Filtering your number set👩🏼‍💻....")
                print(digitsFiltered)
                    
            case ">=":
                for numbers in digitsOriginal {
                    
                    if numbers >= num1 {
                    digitsFiltered.append(mappedNumber)
                    }
                    //            mappedNumber = 0
                }
                    print("Filtering your number set👩🏼‍💻....")
                    print(digitsFiltered)
                
            default:
                "This is not an operation!🤦🏼‍♀️ "

            }
        }
        //
        return digitsFiltered
    }
    myFilter(inputCondition: userCondition)
}


//MAP
func myMapGlobal() {
var operationArray = ["+" , "/" , "*" , "-"]
    //print statements and inputs
    print("Enter in the set of numbers you want to transform💁🏼‍♀️")
var userCondition = readLine()

    if userCondition != nil {
    print("Enter in the operation you would like to do to these numbers👩🏼‍💻")
    }
var userOperation = readLine()

    if operationArray.contains(userOperation!) {
    print("Lastly, enter the number you would like to transform (\(userOperation!)) your number set by!🙇🏼‍♀️")
    }
    else {
        print("You can only enter +, - , *, or / no extra places please!🙎🏼‍♀️")
        var userOperation = readLine()
        print("Lastly, enter the number you would like to transform (\(userOperation!)) your number set by!🙇🏼‍♀️")

    }
var userNumber = readLine()


func myMap(inputCondition: String?) -> [Int] {


var mappedNumber = Int()
var digitsOriginal = [Int]()
var digitsMapped = [Int]()

        var digitString = inputCondition!.split(separator: " ")

        for numbers in digitString {

    var numberInt = Int(numbers)

            if (-9999999999999...999999999999).contains(numberInt!) {

           digitsOriginal.append(numberInt!)
      }
   }

    if let response1 = userNumber,
       let num1 = Int(response1) {

       switch userOperation {
      case "*":
            for numbers in digitsOriginal {
               mappedNumber = numbers * num1
                digitsMapped.append(mappedNumber)

            }
            print("Multiplying your number set👩🏼‍💻....")
            print(digitsMapped)

        case "/":
            for numbers in digitsOriginal {
                mappedNumber = numbers / num1
                digitsMapped.append(mappedNumber)

            }
            print("Dividing your number set👩🏼‍💻....")
            print(digitsMapped)

        case "-":
            for numbers in digitsOriginal {
                mappedNumber = numbers - num1
                digitsMapped.append(mappedNumber)

            }
            print("Subtracting your number set👩🏼‍💻....")
            print(digitsMapped)
      case "+":
        for numbers in digitsOriginal {

            mappedNumber = numbers + num1
            digitsMapped.append(mappedNumber)
//            mappedNumber = 0
        }
        print("Adding your number set👩🏼‍💻....")
        print(digitsMapped)

      default:
          "This is not an operation!🤦🏼‍♀️ "
      }
    }

//
  return digitsMapped
    }
   myMap(inputCondition: userCondition)
}


//REDUCE
func myReduceGlobal() {
     print("Please enter your collection of numbers you would like to take the sum of 👩🏼‍🏫")
    var userCondition = readLine()
func myReduce(text: String?) -> Int {
//    var text : String = userCondition!
    var digits = [Int]()
    var digitString = text?.split(separator: " ")

    for element in digitString!
    {
        var numberInt = Int(element)
        if (-9999999999999...999999999999).contains(numberInt!) {
            digits.append(numberInt!)
//            continue
        }
        else {
//            var digitString = text?.split(separator: " ")
          print("I can only work with numbers!No consecutive spaces or letters please!")
        }
    }
    print("Calculating your sum...👩🏼‍💻")
    print("Here is your sum! \(digits.reduce(0, +)) 👩🏼‍🏫 ")
return digits.reduce(0, +)


}
//
myReduce(text: userCondition)
}

func runCalc() {
basicMath()
randomMath()
myFilterGlobal()
myReduceGlobal()
myMapGlobal()
print("Glad to have helped you today! I'm going to sleep now! 💆🏼‍♀️")
}
runCalc()

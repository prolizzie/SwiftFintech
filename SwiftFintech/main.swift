//
//  main.swift
//  SwiftFintech
//
//  Created by Елизавета Проскурякова on 20.05.2022.
//

import Foundation

// task 1
print("Введите порядковый номер месяца (от 1 до 12)")
let userMonth = readLine()
displaySeason(month: userMonth!)

// task 2
print("Введите длину массива (от 1 до 20)")
let userArrayLength = Int(readLine()!)
var originalArray = generateArray(userArrayLength!)
print("Исходный массив: \(originalArray)")
print("Новый массив: \(rewriteArray(array: originalArray, length: userArrayLength!))")

// task 3
print("Введите число (n <= 1000)")
let userNumber = Int(readLine()!)
print(printNumbersInWords(number: userNumber!))

// task 4
print("Введите число (n <=100)")
let userFactorial = UInt(readLine()!)
print(factorial(userFactorial!))

func displaySeason (month: String) {
    switch month {
    case "1":
        print("Зима")
    case "2":
        print("Зима")
    case "3":
        print("Весна")
    case "4":
        print("Весна")
    case "5":
        print("Весна")
    case "6":
        print("Лето")
    case "7":
        print("Лето")
    case "8":
        print("Лето")
    case "9":
        print("Осень")
    case "10":
        print("Осень")
    case "11":
        print("Осень")
    case "12":
        print("Зима")
    case _:
        print("Вы ввели несоответствующее значение")
    }
}

func rewriteArray(array: [Int], length: Int) -> [Int] {
    var oldArray = array
    var newArray: [Int] = []
    for i in stride(from: length - 1, to: -1, by: -1) {
        if oldArray[i] < 0 {
            newArray.append(oldArray.remove(at: i))
        }
    }
    newArray.append(contentsOf: oldArray)
    return newArray
}

func generateArray (_ n: Int) -> [Int] {
    return (0..<n).map { _ in .random(in: -20...20) }
}

func printNumbersInWords(number: Int) -> String {
    var userNumber = number
    var result = ""
    
    let hundredsDict = ["сто", "двести", "триста", "четыреста", "пятьсот", "шестьсот", "семьсот", "восемьсот", "девятьсот"]
    let onesDict = ["один", "два", "три", "четыре", "пять", "шесть", "семь", "восемь", "девять", "", "одиннадцать", "двенадцать", "дринадцать", "четырнадцать", "пятнадцать", "шестнадцать", "семнадцать", "восемнадцать", "девятнадцать"]
    let tensDict = ["десять", "двадцать", "тридцать", "сорок", "пятьдесят", "шестьдесят", "семьдесят", "восемьдясят", "девяносто"]
    
    if userNumber > 1000 {
        result = "Число больше 1000"
    }
    
    if userNumber == 1000 {
        result = "Тысяча"
    }
    return result
}

func factorial(_ n: UInt) -> UInt {
    return n < 2 ? 1 : n * factorial(n - 1)
}

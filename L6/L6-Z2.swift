//
//  main.swift
//  L6-Z2
//
//  Created by student on 14/11/2022.
//

import Foundation

var tab: [Int] = []
for _ in 1...10 {
    tab.append(Int.random(in: 1...100))
}

print("[")
for i in tab {
    print(i, terminator:",")
}
print("]")
print("Wprowadz liczbe")
guard let liczba1 = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
tab.insert(liczba1, at:0)

print("[")
for i in tab {
    print(i, terminator:",")
}
print("]")

print("Wprowadz liczbe")
guard let liczba2 = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
var ostatniindex : Int = tab.count - 1
tab.insert(liczba2, at: Int.random(in: 0...ostatniindex))

print("[")
for i in tab {
    print(i, terminator:",")
}
print("]")

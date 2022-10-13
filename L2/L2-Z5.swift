

import Foundation

var a : Int
var b : Int
var c : Int
a=Int.random(in:1...9)
b=Int.random(in:1...9)
c=Int.random(in:1...9)
var srednia : Double
srednia = Double((a+b+c))/3.0
print("Liczba Pierwsza: " + String(a))
print("Liczba Druga:" + String(b))
print("Liczba Trzecia: " + String(c))
print("Srednia jest rowna: " + String(srednia))

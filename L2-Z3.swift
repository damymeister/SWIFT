import Foundation

var a: Double = 0.0
var pole: Double = 0.0
var obj: Double = 0.0
print("Wprowadz dlugosc boku szescianu")
if let tmp = Double(readLine()!)
{
    a=tmp
}
pole = 6 * a * a
obj = a * a * a
print("Pole szescianu jest rowne: " + String(format: "%.2f", pole)
      + " Objetosc szescianu jest rowna: " + String(format: "%.2f", obj))

import Foundation

let pi : Double = 3.14
var pole : Double = 0.0
var obw : Double = 0.0
var r : Double = 0.0
print("Wpisz promien kola")
if let tmp = Double(readLine()!)
{
    r=tmp
}
pole = pi * r * r
obw = 2.0 * pi * r
print("Pole jest rowne: " + String(format: "%.2f",
        pole) + " Obwod jest rowny: " + String(format: "%.2f", obw))

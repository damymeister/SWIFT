var kwotaPLN: Double = 0.0
let kursDolar: Double = 4.86
print("Wprowadz kwote w PLN")
if let tmp = Double(readLine()!)
{
        kwotaPLN = tmp
}
var kwotaDolar: Double = kwotaPLN / kursDolar
print("Wprowadzona kwota w Dolarach to: " + String (kwotaDolar))

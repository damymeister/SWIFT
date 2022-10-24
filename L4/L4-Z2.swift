import Foundation
var rok : Int = 0
print("Wprowadz rok z przedzialu <2,3010>")
guard let rok = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita")
}
if(rok>=2 && rok <= 3010)
{
    var wiek: Int = ((rok-1)/100) + 1
    print("Rok: \(rok) - Wiek \(wiek)")
}
else
{
    print("Wprowadziles rok ze zlego zakresu!")
}

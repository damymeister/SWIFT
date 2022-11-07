import Foundation
print("Podaj liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if(liczba<100)
{
    fatalError("Liczba musi byc trzycyfrowa!")
}
var ile : Int = 0
var sumacyfrliczby : Int = 1
var n : Int = liczba
while(n>10)
{
    sumacyfrliczby = n % 10
    n = n / 10
    ile = ile + 1
}
var sredniageo : Double = pow(Double(sumacyfrliczby), 1.0 / Double(ile))
print(sredniageo)

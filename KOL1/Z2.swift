import Foundation
var tab: [Int] = []
print("Wprowadz poszukiwana liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
print("Wprowadz ilosc elementow tablicy")
guard let el = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
for _ in 0..<el
{
print("Wprowadz liczbe")
    guard let element = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
tab.append(element)
}
var min : Int = tab[0]
var min_index : Int = 0
var roznica : Int = abs(liczba - tab[0])
for i in 0..<el 
{
    if(abs(tab[i]-liczba)<roznica)
    {
        roznica = abs(tab[i] - liczba)
        min = tab[i]
        min_index = i
    }
}
print("Liczba najblizsza poszukiwanej \(min)")
print("Index najblizszy poszukiwanej \(min_index)")

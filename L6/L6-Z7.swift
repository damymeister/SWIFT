import Foundation
var tab : [Int] = []
print("Podaj liczbe elementow tablicy")
guard let elementy = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if(elementy<0)
{
    fatalError("Liczba elementow tablicy musi byc wieksza od 0!")
}
print("Wprowadz CALKOWITE elementy tablicy")
for i in 1...elementy{
    print("Podaj \(i) element:")
    guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
    tab.append(liczba)
}
var index_start_ciagu: Int = 0
var dlugosc_ciagu: Int = 0
for i in 0 .. < elementy {
    
}
//Dokonczyc

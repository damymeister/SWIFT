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
print("Wyswietlam tablice: ")
print(" ", terminator: "[")
for i in 0  ..< elementy {
    print("\(tab[i])", terminator: ", ")
}
print("]")

var index_start_ciagu: Int = 0
var dlugosc_ciagu: Int = 0
var max_dlugosc_ciagu : Int = 0
for i in 1  ..< elementy {
    if(tab[i]>tab[i-1])
    {
        dlugosc_ciagu += 1
        if(dlugosc_ciagu>max_dlugosc_ciagu)
        {
            max_dlugosc_ciagu = dlugosc_ciagu
            index_start_ciagu = i - dlugosc_ciagu + 1
        }
    }
    else
    {
        dlugosc_ciagu = 1
    }
}
print("Dlugosc najwiekszego podciagu rosnacego to \(max_dlugosc_ciagu), a index jego poczatku to \(index_start_ciagu)")
for i in index_start_ciagu ..< index_start_ciagu + max_dlugosc_ciagu{
 print("\(tab[i])", terminator: ", ")
}
print("")

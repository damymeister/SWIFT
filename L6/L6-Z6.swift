import Foundation

var tab2D : [[Float]] = [[]]

print("Podaj liczbe wierszy")

guard let wiersze = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if(wiersze<=0)
{
    fatalError("Liczba wierszy musi byc dodatnia!")
}

print("Podaj liczbe kolumn")

guard let kolumny = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if(kolumny<=0)
{
    fatalError("Liczba kolumn musi byc dodatnia!")
}
for i in 0 ..< wiersze {
    tab2D.append( [] )
    for _ in 0 ..< kolumny {
        tab2D[i].append(Float.random(in: -100.0 ... 100.0))
    }
}

print("[", terminator: "")
for i in 0 ..< wiersze {
    print("[", terminator: "")
    for j in 0 ..< kolumny {
        print("\(tab2D[i][j])", terminator:", ")
    }
    print("]", terminator: ", ")
}
print("]")
var max_liczba : Float = tab2D[0][0]
var max_index_i : Int = 0
var max_index_j : Int = 0
var min_liczba : Float = tab2D[0][0]
var min_index_i : Int = 0
var min_index_j : Int = 0
for i in 0 ..< wiersze
{
    for j in 0 ..< kolumny
    {
        if(tab2D[i][j] > max_liczba)
        {
            max_liczba = tab2D[i][j]
            max_index_i = i
            max_index_j = j
        }
        if(tab2D[i][j] < min_liczba)
        {
            min_liczba = tab2D[i][j]
            min_index_i = i
            min_index_j = j
        }
    }
}

print("Element maksymalny to \(max_liczba) i znajduje sie w wierszu \(max_index_i) i kolumnie \(max_index_j)")
print("Element minimalny to \(min_liczba) i znajduje sie w wierszu \(min_index_i) i kolumnie \(min_index_j)")

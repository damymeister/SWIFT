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

for i in 0 ..< wiersze
{
    for j in 0..< kolumny
    {
        if(
    }
}
//dokonczyc

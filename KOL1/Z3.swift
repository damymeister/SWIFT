import Foundation

var tab2D : [[Int]] = [[]]

print("Podaj liczbe zespolow")

guard let wiersze = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if(wiersze<=0)
{
    fatalError("Liczba wierszy musi byc dodatnia!")
}

print("Podaj liczbe osob w kazdym zespole")

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
        tab2D[i].append(Int.random(in: 500 ... 1500))
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
var min_w_wierszu : Int = tab2D[0][0]
var tab_min : [Int] = []
for i in 0..<wiersze
{
    min_w_wierszu = tab2D[i][0]
    for j in 0..<kolumny
    {
        if(tab2D[i][j]<min_w_wierszu)
        {
            min_w_wierszu = tab2D[i][j]
            
        }
    }
    tab_min.append(min_w_wierszu)
}
print("[", terminator: "")
for i in 0 ..< tab_min.count {
 print("\(tab_min[i])", terminator:", ")
}
print("]")
var max_tab_min : Int = tab_min[0]
for i in 0 ..< tab_min.count{
    if(tab_min[i]>max_tab_min)
    {
        max_tab_min = tab_min[i]
    }
}
print("Minimalna suma ktora zadowoli przynajmniej jednego pracownika z kazdego zespolu to: \(max_tab_min)")

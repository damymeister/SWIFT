import Foundation
var tab : [Int] = []
print("Wprowadz ilosc liczb (n)")
guard let n = Int(readLine()!) else{
       fatalError("To nie jest liczba calkowita!")
    
}
if(n<3){
    fatalError("Liczba elementow musi byc wieksza od 3")
}
for _ in 0 ..< n{
    tab.append(Int.random(in:100...9999))
}
print("[", terminator:"")
for i in 0 ..< tab.count
{
    print("\(tab[i])", terminator:", ")
}
print("]")
var s : String = ""
for i in 0 ..< tab.count
{
    s += String(tab[i])
}
print("Wyswietlam ciagly lancuch")
print(s)
var tab2 : [Int] = []
var ile : Int = 0
for i in 0 ..< tab.count
{
    if(tab[i] % 2 == 0)
    {
        continue
    }
    else
    {
        if(String(tab[i]).count == 3)//Sprawdzam czy liczba nieparzysta jest trzycyfrowa
        {
            ile = ile + 1
            tab2.append(tab[i])
        }
    }
}
if (tab2.isEmpty==true)
{
    print("Nie ma liczb nieparzystych TRZYCYFROWYCH!")
}
else
{
    print("Wyswietlam liczby nieparzyste TRZYCYFROWE")
    print("[", terminator:"")
    for i in 0 ..< tab2.count
    {
        print("\(tab2[i])", terminator:", ")
    }
    print("]")
    print("Liczb trzycyfrowych nieparzystych jest: \(ile)")
}

import Foundation

var samochody = Set <String>()
samochody.insert("A1")
samochody.insert("A2")
samochody.insert("A3")
samochody.insert("A4")
samochody.insert("A5")
samochody.insert("A6")
print("Wyswietlam samochody")
for i in samochody{
    print(i)
}
print("Wprowadz nazwe modelu samochodu ktory chcesz usunac")
let nazwa : String = readLine()!

if samochody.contains(nazwa){
    print("Usunieto \(nazwa)")
    samochody.remove(nazwa)
}
else
{
    fatalError("Nie ma takiego modelu!")
}
print("Wyswietlam samochody")
for i in samochody{
    print(i)
}

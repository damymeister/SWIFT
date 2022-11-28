import Foundation

print("Wprowadz liczbe mieszkan")
guard let ile = Int(readLine()!) else {
       fatalError("To nie jest liczba!")
   }
if(ile<=0){
    fatalError("Liczba mieszkan musi byc wieksza od zera!")
}
var mieszkania : [(lokalizacja: String, powierzchnia: Double, cena_za_m2 : Double)] = []

for _ in 0..<ile
{
    print("Podaj lokalizacje: ", terminator:"")
    let lok = readLine()!
    print("Podaj powierzchnie w m2:", terminator:"")
    guard let pow = Double(readLine()!) else {
           fatalError("Powierzchnia musi byc liczba!")
       }
    print("Podaj cene za metr kwadratowy: ", terminator:"")
    guard let cena = Double(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
    mieszkania.append((lokalizacja: lok, powierzchnia: pow, cena_za_m2: cena))
}
let sortuj = mieszkania.sorted{
    ($0.cena_za_m2 * $0.powierzchnia) > ($1.cena_za_m2 * $1.powierzchnia)
}
print("Najdrozsze mieszkanie: \(sortuj[0].lokalizacja) - \(sortuj[0].powierzchnia)")
print("Najtansze mieszkanie: \(sortuj[ile-1].lokalizacja) - \(sortuj[ile-1].powierzchnia)")

print("Wprowadz lokalizacje")
var lokalizacjaa = readLine()!

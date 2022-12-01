import Foundation
enum Standard: Int, CaseIterable  {
    case wysoki = 1
    case sredni = 2 
    case niski = 3
}
print("Wprowadz liczbe mieszkan")
guard let ile = Int(readLine()!) else {
       fatalError("To nie jest liczba!")
   }
   
if(ile<=0){
    fatalError("Liczba mieszkan musi byc wieksza od zera!")
}

var mieszkania : [(lokalizacja: String, powierzchnia: Double, cena_za_m2 : Double, standard: Standard)] = []
var czypoprawny : Bool = false
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
           fatalError("Cena musi byc liczba!")
       }
    print("Wpisz standard mieszkania (wysoki - 1, sredni - 2, niski - 3): ", terminator:"")
     guard let std = Int(readLine()!) else {
           fatalError("Wybrales zly standard!")
       }
    for i in Standard.allCases{
    if(std == i.rawValue )
    {
        mieszkania.append((lokalizacja: lok, powierzchnia: pow, cena_za_m2: cena, standard: Standard(rawValue: std)!))
        czypoprawny = true
        break
    }
    else{
        czypoprawny = false
    }
    }
}
if(czypoprawny == false)
{
    fatalError("Wprowadziles niepoprawny standard!!")
}

let s = mieszkania.sorted{
    $0.standard.rawValue > $1.standard.rawValue
    }
for i in 0 ..< ile {
       print("\(s[i].lokalizacja) - \(s[i].powierzchnia) - \(s[i].cena_za_m2) - \(s[i].standard)")
}

import Foundation
struct liczbaZespolona{
    var Re : Double
    var Im : Double
    init(Re: Double, Im: Double) {
        self.Re = Re
        self.Im = Im
    }
}
print("Podaj czesc rzeczywista liczby 1: ")
guard let a = Double(readLine()!) else
{
        fatalError("Wprowadziles nieprawidlowa wartosc")
}
print("Podaj czesc Urojona liczby 1: ")
guard let b = Double(readLine()!) else
{
        fatalError("Wprowadziles nieprawidlowa wartosc")
}
var z1 = liczbaZespolona(Re:a, Im:b)
print("Podaj czesc rzeczywista liczby 2: ")
guard let c = Double(readLine()!) else
{
        fatalError("Wprowadziles nieprawidlowa wartosc")
}
print("Podaj czesc Urojona liczby 1: ")
guard let d = Double(readLine()!) else
{
        fatalError("Wprowadziles nieprawidlowa wartosc")
}
var z2 = liczbaZespolona(Re:c, Im:d)
print("Wybierz opcje: 1 - Dodawanie, 2 - Odejmowanie, 3 - Mnozenie")
guard let x = Int(readLine()!) else{
    fatalError("Nieprawidlowa wartosc!")
}
switch(x){
    case 1:
    var w = liczbaZespolona(Re: z1.Re + z2.Re, Im: z1.Im + z2.Im)
    print("Wynik dodawania to: \(w)")
    break
    case 2:
    var z = liczbaZespolona(Re: z1.Re - z2.Re, Im: z1.Im - z2.Im)
    print("Wynik odejmowania to: \(z)")
    break
    case 3:
    var c = liczbaZespolona(Re: z1.Re*z2.Re-z1.Im*z2.Im, Im: z1.Re*z2.Im+z2.Re*z1.Im)
    print("Wynik mnozenia to: \(c)")
    break
    default:
    fatalError("Nieprawidlowa opcja!")
}

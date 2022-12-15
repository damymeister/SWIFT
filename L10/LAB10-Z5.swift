import Foundation

class Osoba {
    var imie: String = ""
    var nazwisko: String = ""
    var rokUr: Int = 0
    init(imie: String, nazwisko: String, rokUr: Int) 
        {
            self.imie = imie
            self.nazwisko = nazwisko
            self.rokUr = rokUr
        }
        func wyswietl() {
            print("Imie: \(imie)")
            print("Nazwisko: \(nazwisko)")
            print("Rok urodzenia: \(rokUr)")
            }
        func age() -> Int
        {
            let currentYear : Int = 2022
            return currentYear - rokUr
        }
    
}
var o1 = Osoba(imie: "Lewis", nazwisko: "Hamilton", rokUr:1985)
var o2 = Osoba(imie: "Fernando", nazwisko: "Alonso", rokUr:1981)
if(o1.age() > o2.age())
{
    print("Starsza osoba jest \(o1.imie) \(o1.nazwisko) \(o1.rokUr)")
}
else if (o1.age() < o2.age())
{
    print("Starsza osoba jest \(o2.imie) \(o2.nazwisko) \(o2.rokUr)")
}
else
{
    print("Osoby sa w tym samym wieku")
}


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

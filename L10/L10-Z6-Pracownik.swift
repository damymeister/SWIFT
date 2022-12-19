import Foundation
class Pracownik : Osoba {
    var rokZatrudnienia : Int = 0
    var iloscH : Int = 0
    var stawkazaH : Double = 0.0
    var stanowisko : Stanowisko?
    var nazwaFirmy: String = ""
    
    init(imie: String, nazwisko: String, rokUr: Int, iloscH: Int, rokZatrudnienia:Int, stawkazaH: Double, stanowisko: Stanowisko, nazwaFirmy:String)
        {
            self.rokZatrudnienia = rokZatrudnienia
            self.iloscH = iloscH
            self.stawkazaH = stawkazaH
            self.nazwaFirmy = nazwaFirmy
            self.stanowisko = stanowisko
            super.init(imie: imie, nazwisko: nazwisko, rokUr: rokUr)
        }
         func yearsOfWorking(rokZatrudnienia: Int) -> Int
        {
            let currentDateTime = 2022
            return currentDateTime - rokZatrudnienia
        }
        func salary(iloscH : Int, stawkazaH: Double ) -> Double{
            return Double(iloscH) * stawkazaH
        }
        override func wyswietl() {
            print("Imie: \(imie)")
            print("Nazwisko: \(nazwisko)")
            print("Rok urodzenia: \(rokUr)")
            print("Ilosc godzin: \(iloscH)")
            print("Rok zatrudnienia: \(rokZatrudnienia)")
            print("Stawka za godzine: \(stawkazaH)")
            if stanowisko == Stanowisko.TeamBoss{
                print("Stanowisko: TeamBoss")
            }
            else{
                print("Stanowisko: Driver")
                }
            print("Nazwa firmy: \(nazwaFirmy)")
            
            }
}

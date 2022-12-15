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


 enum Stanowisko:String, CaseIterable
        {
             case TeamBoss 
             case Driver 
        }


class Pracownik : Osoba {
    var rokZatrudnienia : Int = 0 
    var iloscH : Int = 0
    var stawkazaH : Double = 0.0
    var stanowisko : Stanowisko?
    var nazwaFirmy: String = ""
    
    init(imie: String, nazwisko: String, rokUr: Int, iloscH: Int, rokZatrudnienia:Int, stawkazaH: Double, stanowisko: Stanowisko, nazwaFirmy:String) 
        {
            super.init(imie: imie, nazwisko: nazwisko, rokUr: rokUr)
            self.rokZatrudnienia = rokZatrudnienia
            self.iloscH = iloscH
            self.stawkazaH = stawkazaH
            self.nazwaFirmy = nazwaFirmy
            self.stanowisko = stanowisko
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
print("---------------------------")
var o3 = Pracownik(imie: "Charles", nazwisko: "Leclerc", rokUr:1997, iloscH: 80, rokZatrudnienia:2015, stawkazaH: 2000.50, stanowisko: Stanowisko.Driver , nazwaFirmy:"Ferrari")
o3.wyswietl()
var workTime1 : Int = o3.yearsOfWorking(rokZatrudnienia:o3.rokZatrudnienia)
var pensja1 : Double = o3.salary(iloscH: o3.iloscH,stawkazaH: o3.stawkazaH)
print("Lata pracy: \(workTime1)")
print("Pensja: \(pensja1)")
print("---------------------------")
var o4 = Pracownik(imie: "Jean", nazwisko: "Todt", rokUr:1950, iloscH :130, rokZatrudnienia:1997, stawkazaH: 1500.50, stanowisko: Stanowisko.TeamBoss , nazwaFirmy:"Ferrari")
o4.wyswietl()
print("---------------------------")
var workTime2 : Int = o4.yearsOfWorking(rokZatrudnienia:o4.rokZatrudnienia)
var pensja2 : Double = o4.salary(iloscH: o4.iloscH, stawkazaH:o4.stawkazaH)
print("Lata pracy: \(workTime2)")
print("Pensja: \(pensja2)")

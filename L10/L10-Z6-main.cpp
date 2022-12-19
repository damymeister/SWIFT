import Foundation
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

import Foundation

var osoba:(imie: String, nazwisko: String, rok: Int)
var o1 = (imie: "Scooby", nazwisko : "Doo", rok: 1973)
var o2 = (imie: "Fred", nazwisko : "Kudlaty", rok: 1976)
if(o1.rok > o2.rok)
{
    print("Starsza jest osoba: \(o2.imie) \(o2.nazwisko)")
}
if(o1.rok < o2.rok)
{
    print("Starsza jest osoba: \(o1.imie) \(o1.nazwisko)")
}
else
{
    print("Osoby sa w tym samym wieku")
}

enum Kierunki :String, CaseIterable{
    
    case Informatyka
    case Elektrotechnika
}
var s1 = Student(imie: "Lewis", nazwisko: "Hamilton", rokUr:1985, nrIndeksu: 95357, KierunekStudiow: Kierunki.Informatyka, rokStudiow: 2, oceny[4.0,3.5,6.0])
var s2 = Student(imie: "Fernando", nazwisko: "Alonso", rokUr:1981, nrIndeksu: 93212, KierunekStudiow: Kierunki.Elektrotechnika, rokStudiow: 4, oceny:[4.5,3.0,5.0])

s1.wyswietl()
s2.wyswietl()




import Foundation
class Student : Osoba {
    var nrIndeksu : Int = 0
    var KierunekStudiow : Kierunki?
    var rokStudiow : Int = 0
    var oceny : [Double] = []
    init(imie: String, nazwisko: String, rokUr : Int, nrIndeksu: Int, KierunekStudiow: Kierunki, rokStudiow: Int, oceny:[Int]) {
        self.nrIndeksu = nrIndeksu
        self.KierunekStudiow = KierunekStudiow
        self.rokStudiow = rokStudiow
        self.oceny = oceny
        super.init(imie: imie, nazwisko: nazwisko, rokUr: rokUr)
    }
    override func wyswietl() {
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Rok urodzenia: \(rokUr)")
        print("Nr indeksu: \(nrIndeksu)")
        if KierunekStudiow == Kierunki.Informatyka
        {
            print("Kierunek studiow: Informatyka")
        }
        else
        {
            print("Kierunek Studiow: Elektrotechnika")
        }
        print("Rok studiow: \(rokStudiow)")
    }
}

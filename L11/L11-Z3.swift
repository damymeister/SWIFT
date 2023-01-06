import Foundation

enum Kierunki : String, CaseIterable {
    case II = "Informatyka"
    case EL = "Elektrotechnika"
    case MAR = "Marketing"
}

class Student : Osoba {
    var nrIndeksu : Int = 0
    var KierunekStudiow : Kierunki?
    var rokStudiow : Int = 0
    var oceny : [Double] = []
    init(imie: String, nazwisko: String, rokUr : Int, nrIndeksu: Int, KierunekStudiow: Kierunki?, rokStudiow: Int, oceny:[Double]) {
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
        print("Kierunek studiow: \(KierunekStudiow!)")
    }
}
var studenci : [Student]
print("Wprowadz liczbe studentow")
 guard let ile = Int(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
func insert(studenci : [Student])
{
    for i in 0..<ile{
        
    }
}
nie dziala i tak

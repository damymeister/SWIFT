import Foundation


var pesel : String = "01221206677"
var peselchar = Array(pesel)
print(peselchar)


let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let date = formatter.date(from: "2021/12/20")
let date2 = formatter.date(from: "2022/12/20")
var i = date!.distance(to:date2!)
var z = i / 31536000
print(z)









 import Foundation
 
 enum obywatelstwo: String, CaseIterable{
    case hiszpan = "Hiszpanskie"
    case niemiec = "Niemieckie"
    case polak = "Polskie"
 } 
 
 class Osoba{
    var Imie : String = "" 
    var Nazwisko : String = "" 
    var Waga : Double = 0.0 
    var Wzrost : Double = 0.0
    var Pesel : Int = 0
    var Kraj : obywatelstwo?
    init(Imie: String, Nazwisko: String, Waga: Double, Wzrost: Double, Pesel: Int, Kraj: obywatelstwo?){
        self.Imie = Imie
        self.Nazwisko = Nazwisko
        self.Waga = Waga
        self.Wzrost = Wzrost
        self.Pesel = Pesel
        self.Kraj = Kraj
    }
    func show() -> Void{
        print("Imie: \(Imie) - Nazwisko: \(Nazwisko) - Waga: \(Waga) - Wzrost: \(Wzrost) - obywatelstwo: \(Kraj!) ")
    }
 }


var ob1 = Osoba(Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: 12312345678, Kraj: obywatelstwo.polak)


 enum rodzaj: String, CaseIterable{
    case signle = "signle"
    case double = "double"
    case singleAndDouble = "singleAndDouble"
 } 

class Tenisista : Osoba{
    
    var rodzajGry : rodzaj?
    var aktPozycja : Int = Int.random(in: 1...100)
    var sumaPkt : Int = 0
    var NajlepszaPozycja : Int = 0
    var historiaMeczy : [(NazwaTurnieju: String, LiczbaPunktow: Int)] = []  
    init(rodzajGry: rodzaj?, aktPozycja: Int, sumaPkt: Int, NajlepszaPozycja: Int, historiaMeczy: [(NazwaTurnieju: String, LiczbaPunktow: Int)],Imie: String, Nazwisko: String, Waga: Double, Wzrost: Double, Pesel: Int, Kraj: obywatelstwo?){
        self.rodzajGry = rodzajGry
        self.aktPozycja = aktPozycja
        self.sumaPkt = sumaPkt
        self.NajlepszaPozycja = NajlepszaPozycja
        self.historiaMeczy = historiaMeczy
        super.init(Imie: Imie, Nazwisko: Nazwisko, Waga: Waga, Wzrost: Wzrost, Pesel: Pesel, Kraj: Kraj)
    }
    override  func show() -> Void{
        print("Imie: \(Imie) - Nazwisko: \(Nazwisko) - Waga: \(Waga) - Wzrost: \(Wzrost) - obywatelstwo: \(Kraj!) ")
        print("Rodzaj gry: \(rodzajGry!)")
        print("sumaPkt: \(rodzajGry!) - aktPozycja: \(aktPozycja) - NajlepszaPozycja: \(NajlepszaPozycja) - historiaMeczy: \(historiaMeczy)")
        
    }
    
    func addTour() -> [(NazwaTurnieju: String, LiczbaPunktow: Int)]{
        
        print("Podaj nazwe", terminator: ": ")
        guard let x = readLine() else {
            fatalError("To nie jest ")
        }
        print("Podaj liczbe punktwow", terminator: ": ")
        guard let y = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita")
        }
        historiaMeczy.append((NazwaTurnieju: x, LiczbaPunktow: y))
    
        return historiaMeczy
    }
    
    
}

var Tenis1 = Tenisista(rodzajGry: rodzaj.singleAndDouble, aktPozycja: 71, sumaPkt: 256, NajlepszaPozycja: 69, historiaMeczy: [(NazwaTurnieju: "Cos", LiczbaPunktow: 21)],Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: 12312345678, Kraj: obywatelstwo.polak)
Tenis1.show()
Tenis1.addTour()
Tenis1.show()

var Tenis2 : [Tenisista] = []
Tenis2.append(Tenisista(rodzajGry: rodzaj.double, aktPozycja: 71, sumaPkt: 256, NajlepszaPozycja: 69, historiaMeczy: [(NazwaTurnieju: "Cos", LiczbaPunktow: 21)],Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: 12312345678, Kraj: obywatelstwo.polak))
Tenis2.append(Tenisista(rodzajGry: rodzaj.double, aktPozycja: 71, sumaPkt: 256, NajlepszaPozycja: 69, historiaMeczy: [(NazwaTurnieju: "Cos", LiczbaPunktow: 21)],Imie: "Maciek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: 12312345678, Kraj: obywatelstwo.hiszpan))
func printiszpan (tab: [Tenisista]) -> Void {

    for i in 0..<tab.count {
        if ((tab[i].rodzajGry == rodzaj.double) && tab[i].Kraj == obywatelstwo.hiszpan) {
            tab[i].show()
        }else{
            print("Nie ma nikogo z takim obywatelstwwem grajacego w double")
        }
    }
}

printiszpan(tab: Tenis2)

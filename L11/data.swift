import Foundation


var pesel : String = "01221206677"
var tab = Array(pesel)

var rok_index = String(tab[1])

var rok : String = "20" + String(tab[0]) + String(tab[1])
var mies : String = ""
if(tab[2] == "2")
{
    mies += "0"
}
else{
    mies += "1"
}
mies += String(tab[3])
var dzien : String = String(tab[4]) + String(tab[5])
var data : String = rok + "/" + mies + "/" + dzien
print(data)



let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let date = formatter.date(from: data)
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
    var Pesel : String = ""
    var Kraj : obywatelstwo?
    init(Imie: String, Nazwisko: String, Waga: Double, Wzrost: Double, Pesel: String, Kraj: obywatelstwo?){
        self.Imie = Imie
        self.Nazwisko = Nazwisko
        self.Waga = Waga
        self.Wzrost = Wzrost
        self.Pesel = Pesel
        self.Kraj = Kraj
    }
    
    func calcWiek () {
                
        
        var tab = Array(Pesel)
        var rok_index = String(tab[1])
        print("tab:", tab)
        var rok : String = "20" + String(tab[0]) + String(tab[1])
        var mies : String = ""
        if(tab[2] == "2")
        {
            mies += "0"
        }
        else{
            mies += "1"
        }
        mies += String(tab[3])
        var dzien : String = String(tab[4]) + String(tab[5])
        var data : String = rok + "/" + mies + "/" + dzien
        print(data)
        
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let date = formatter.date(from: data)
        let date2 = formatter.date(from: "2022/12/20")
        var i = date!.distance(to:date2!)
        var z = i / 31536000
        print("wiek wynosi:", z)
        
    }
            func show() -> Void{
                print("Imie: \(Imie) - Nazwisko: \(Nazwisko) - Waga: \(Waga) - Wzrost: \(Wzrost) - obywatelstwo: \(Kraj!) ")
            }
 }


var ob1 = Osoba(Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: "01221206677", Kraj: obywatelstwo.polak)
ob1.calcWiek()

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
    init(rodzajGry: rodzaj?, aktPozycja: Int, sumaPkt: Int, NajlepszaPozycja: Int, historiaMeczy: [(NazwaTurnieju: String, LiczbaPunktow: Int)],Imie: String, Nazwisko: String, Waga: Double, Wzrost: Double, Pesel: String, Kraj: obywatelstwo?){
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

var Tenis1 = Tenisista(rodzajGry: rodzaj.singleAndDouble, aktPozycja: 71, sumaPkt: 256, NajlepszaPozycja: 69, historiaMeczy: [(NazwaTurnieju: "Cos", LiczbaPunktow: 21)],Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: "12312345678", Kraj: obywatelstwo.polak)
Tenis1.show()


var Tenis2 : [Tenisista] = []
Tenis2.append(Tenisista(rodzajGry: rodzaj.double, aktPozycja: 71, sumaPkt: 256, NajlepszaPozycja: 69, historiaMeczy: [(NazwaTurnieju: "Cos", LiczbaPunktow: 21)],Imie: "Tomek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: "12312345678", Kraj: obywatelstwo.polak))
Tenis2.append(Tenisista(rodzajGry: rodzaj.double, aktPozycja: 71, sumaPkt: 256, NajlepszaPozycja: 69, historiaMeczy: [(NazwaTurnieju: "Cos", LiczbaPunktow: 21)],Imie: "Maciek", Nazwisko: "Domek", Waga: 43.2, Wzrost: 182, Pesel: "12312345678", Kraj: obywatelstwo.hiszpan))
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
Tenis1.calcWiek()






import Foundation
import Glibc
 
class Punkt {
    var x : Double = 0.0
    var y : Double = 0.0
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

class Dane2P {
    var p1: Punkt = Punkt(x: 0, y: 0)
    var p2: Punkt = Punkt(x: 0, y: 0)
    init(p1: Punkt, p2: Punkt) {
        self.p1 = p1
        self.p2 = p2
    }
    func length (p1: Punkt, p2: Punkt) -> Double {
        return sqrt(pow(p1.x - p2.x, 2.0) + pow(p1.y - p2.y, 2.0))
    }
    func vector (p1: Punkt, p2: Punkt) -> (Double, Double) {
        return (p2.x - p1.x, p2.y - p1.y)
    }
    func show () {
        print("Odcinek: A(\(p1.x),\(p1.y)), B(\(p2.x),\(p2.y))")
    }
}

class Dane3P : Dane2P {
    var p3: Punkt = Punkt(x: 0, y: 0)
    init (p1: Punkt, p2: Punkt, p3: Punkt) {
        self.p3 = p3
        super.init(p1: p1, p2: p2)
    }
    func wsp () -> Bool {
        var dl : [Double] = [length(p1: super.p1, p2: super.p2), length(p1: super.p1, p2: self.p3), length(p1: super.p2, p2: self.p3)]
        dl.sort()
        print(dl)
        if (dl[0] + dl[1] == dl[2]) {
            return true
        }
        return false
    }
    func rodzajTrojkata () -> String {
        if (wsp()) {
            return "Nie trojkat"
        }
        let wektory : [(Double, Double)] = [vector(p1: super.p1, p2: super.p2), vector(p1: super.p2, p2: self.p3),vector(p1: self.p3, p2: super.p1)]
        let il : [Double] = [wektory[0].0 * wektory[1].0 + wektory[0].1 * wektory[1].1, wektory[1].0 * wektory[2].0 + wektory[1].1 * wektory[2].1, wektory[2].0 * wektory[0].0 + wektory[2].1 * wektory[0].1]
        var dl : [Double] = [length(p1: super.p1, p2: super.p2), length(p1: super.p2, p2: self.p3), length(p1: self.p3, p2: super.p1)]
    }
}

let x : Dane3P = Dane3P(p1: Punkt(x: 0, y: 0), p2: Punkt(x: 4, y: 4), p3: Punkt(x: 8, y: 8))
print(x.wsp())

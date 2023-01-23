import Foundation
class Osoba {
    var imie : String = ""
    var nazwisko : String = ""
    var pesel : String = ""
    var obywatelstwo : Obywatelstwo?
    init(imie: String, nazwisko: String, pesel: String, obywatelstwo: Obywatelstwo?) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.pesel = pesel
        self.obywatelstwo = obywatelstwo
    }
    func obliczWiek() -> String {
        var tab = Array(pesel)
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
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        let date = formatter.date(from: data)
        let date2 = formatter.date(from: "2023/01/23")
        var i = date!.distance(to:date2!)
        var z = i / 31536000
        return String(z)
    }
    func wyswietl()
    {
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Pesel: \(pesel)")
        print("Obywatelstwo: \(obywatelstwo!)")
    }
}


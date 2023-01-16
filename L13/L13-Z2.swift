 import Foundation
protocol LiczbaLosowa {
    func generujLiczbe() -> Int
}

class Liczby : LiczbaLosowa{
    var liczba : Int = 0
    var liczba2 : Int = 0
    init(){
        self.liczba = generujLiczbe()
        self.liczba2 = generujLiczbe()
    }
    func generujLiczbe() -> Int {
        return Int.random(in:1...10)
    }
    func wyswietl (){
        print("Liczba 1 - \(liczba), Liczba 2 - \(liczba2)")
    }
    func poteguj (potega : Double) -> Void{
        liczba = Int(pow(Double(liczba), potega))
        liczba2 = Int(pow(Double(liczba2), potega))
    }
}
var l : Liczby = Liczby()
l.wyswietl()
l.poteguj(potega: 3.0)
l.wyswietl()

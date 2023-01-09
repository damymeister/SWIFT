import Foundation
class Drzewo {
    var wysokosc : Int = 0
    var rodzaj : RodzajDrzewa?
    var rokzasadzenia : Int = 0
    init(wysokosc: Int, rodzaj: RodzajDrzewa? , rokzasadzenia: Int) {
        self.wysokosc = wysokosc
        self.rodzaj = rodzaj
        self.rokzasadzenia = rokzasadzenia
    }
    func wyswietl()
    {
        print("Wysokosc: \(wysokosc)")
        print("Rodzaj drzewa: \(rodzaj!)")
        print("Rok zasadzenia: \(rokzasadzenia)")
    }
}

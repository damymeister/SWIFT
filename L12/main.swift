import Foundation

enum Ozdoba : String, CaseIterable{
    case bombka = "O"
    case cukierek = "z"
    case pierniczek = "&"
    case zabawka = "$"
}
enum RodzajDrzewa : Int, CaseIterable {
    case lisciaste = 1
    case iglaste = 2
}
var ch : Choinka = Choinka(wysokosc: 3, rodzaj : RodzajDrzewa.iglaste, rokzasadzenia: 2, lpoziomow: 3, hUnderGalaz: 3, ileozdob: 4, Rodzajozdob: [Ozdoba.bombka, Ozdoba.cukierek, Ozdoba.pierniczek, Ozdoba.zabawka])
ch.rysujOzdobionaChoinke(layercount: 3, levelcount: 7)



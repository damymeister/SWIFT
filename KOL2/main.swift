
import Foundation


enum Obywatelstwo: String{
    case SPA = "Hiszpanskie"
    case GER = "Niemieckie"
    case POL = "Polskie"
    case ITA = "Wloskie"
}
enum Zespol : String {
    case Mercedes = "Mercedes"
    case Ferrari = "Ferrari"
    case AlfaRomeo = "Alfa Romeo"
    case RedBull = "RedBull"
    case McLaren = "McLaren"
    case Williams = "Williams"
}
var obiekt = Osoba(imie:"Mateusz", nazwisko: "Adamczyk", pesel:"01221206677", obywatelstwo: Obywatelstwo.POL)
obiekt.wyswietl()
print(obiekt.obliczWiek())

var kierowcy : [Kierowca] = []
kierowcy.append(Kierowca(imie:"Max", nazwisko: "Verstappen", pesel:"01221206677", obywatelstwo: Obywatelstwo.GER, zespoll : Zespol.RedBull, fastestLap: 1.13, PolePosition: 30, bestSeasons: [(Sezon: "2001", LiczbaPunktow: 133)]))
kierowcy.append(Kierowca(imie:"Lewis", nazwisko: "Hamilton", pesel:"22221206677", obywatelstwo: Obywatelstwo.SPA, zespoll : Zespol.Williams, fastestLap: 1.15, PolePosition: 15, bestSeasons: [(Sezon: "2010", LiczbaPunktow: 170)]))
kierowcy.append(Kierowca(imie:"Fernando", nazwisko: "Alonso", pesel:"33221206677", obywatelstwo: Obywatelstwo.SPA, zespoll : Zespol.Ferrari, fastestLap: 1.18, PolePosition: 30, bestSeasons: [(Sezon: "2007", LiczbaPunktow: 190)]))
kierowcy.append(Kierowca(imie:"Robert", nazwisko: "Kubica", pesel:"08221206677", obywatelstwo: Obywatelstwo.GER, zespoll : Zespol.McLaren, fastestLap: 1.19, PolePosition: 23, bestSeasons: [(Sezon: "2013", LiczbaPunktow: 200)]))
kierowcy.append(Kierowca(imie:"Jenson", nazwisko: "Button", pesel:"22221206677", obywatelstwo: Obywatelstwo.SPA, zespoll : Zespol.Williams, fastestLap: 1.15, PolePosition: 15, bestSeasons: [(Sezon: "209", LiczbaPunktow: 111)]))
kierowcy[0].wyswietl()
kierowcy[0].addSeason()
kierowcy[0].wyswietl()
var ranking : [RankingKierowcow] = []
ranking.append(RankingKierowcow(liczba: kierowcy.count, kierowcy: kierowcy))
ranking[0].showMclaren()
ranking[0].show()


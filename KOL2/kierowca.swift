import Foundation
class Kierowca : Osoba {
    var zespoll : Zespol?
    var fastestLap : Double = 0.0
    var PolePosition : Int = 0
    var bestSeasons : [(Sezon: String, LiczbaPunktow: Int)] = []
    init(imie: String, nazwisko: String, pesel: String, obywatelstwo: Obywatelstwo?, zespoll : Zespol? , fastestLap : Double, PolePosition : Int, bestSeasons : [(Sezon: String, LiczbaPunktow: Int)] ) {
        self.zespoll = zespoll
        self.fastestLap = fastestLap
        self.PolePosition = PolePosition
        self.bestSeasons = bestSeasons
        super.init(imie:imie, nazwisko: nazwisko, pesel: pesel, obywatelstwo : obywatelstwo)
    }
    override func wyswietl()
    {
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Pesel: \(pesel)")
        print("Obywatelstwo: \(obywatelstwo!)")
        print("Zespol: \(zespoll!)")
        print("Najszybsze Okrazenie: \(fastestLap)")
        print("Ilosc pole positions: \(PolePosition)")
        print("Najlepsze sezony: \(bestSeasons)")
    }
    func addSeason() -> [(Sezon: String, LiczbaPunktow: Int)]
    {
        print("Podaj rok sezonu", terminator: ": ")
        let x = readLine()!
        print("Podaj liczbe punktow w sezonie", terminator: ": ")
        guard let y = Int(readLine()!) else {
            fatalError("To nie jest liczba calkowita")
        }
        bestSeasons.append((Sezon: x, LiczbaPunktow: y))
        return bestSeasons
    }
}

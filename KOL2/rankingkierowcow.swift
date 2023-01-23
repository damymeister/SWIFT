import Foundation
class RankingKierowcow {
    var liczba : Int = 0
    var kierowcy : [Kierowca] = []
    init(liczba: Int, kierowcy : [Kierowca]) {
        self.liczba = liczba
        self.kierowcy = kierowcy
    }
    func show()
    {
      print("Wszystkich kierowcow jest \(liczba)")
      print("Wyswietlam dane wszystkich kierowcow")
        for i in 0..<kierowcy.count{
            kierowcy[i].wyswietl()
        }
    }
    func showMclaren(){
        print("Kierowcy ktorzy sa w teamie Mclaren")
        for i in 0..<kierowcy.count{
            if(kierowcy[i].zespoll == Zespol(rawValue: "McLaren"))
            {
                kierowcy[i].wyswietl()
            }
        }
        func showsecondPlace() {
            print("Kierowcy ktorzy w dwoch kolejnych sezonach zdobyli drugie miejsce")
        }
    }
}

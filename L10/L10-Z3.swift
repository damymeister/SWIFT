import Foundation

struct Punkt {
    var x: Double
    var y: Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

func wczytaj () -> Punkt{
    print("Wprowadz wspolrzedna X punktu")
    guard let x = Double(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
    print("Wprowadz wspolrzedna Y punktu")
    guard let y = Double(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
    return Punkt(x:x, y:y)
}

var p1 : Punkt = wczytaj()
var p2 : Punkt = wczytaj()

func odleglosc (p1 : Punkt , p2: Punkt) -> Double {
    var x1 = p1.x
    var y1 = p1.y
    var x2 = p2.x
    var y2 = p2.y
    return sqrt(pow(x2-x1, 2) + pow(y2-y1, 2))
}
func cwiartka(p : Punkt) -> Int{
    if(p1.x > 0)
    {
        if(p.y > 0)
        {
            return 1
        }
            return 4
    }
    else
    {
        if(p.y > 0)
        {
            return 2
        }
        return 3
    }
}
func kwadrat (p1 : Punkt, wspol : Double) -> Void {
    if (abs(p1.x) > wspol || abs(p1.y) > wspol) {
        print("Punkt znajduje sie poza kwadratem")
    }
    else if (abs(p1.x) < wspol && abs(p1.y) < wspol) {
        print("Punkt w kwadracie")
    }
    else {
        print("Punkt na krawedzi kwadratu")
    }
        
}
print("Odleglosc: \(odleglosc(p1: p1, p2: p2))")
print("Cwiartki: \(cwiartka(p: p1)), \(cwiartka(p : p2))")


 print("Wprowadz wspolrzedna kwadratu")
    guard let wsp  = Double(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
       
print("Czy w kwadracie o wierzcholku (\(wsp),\(wsp)) mieszcza sie punkty:")
kwadrat(p1: p1, wspol: wsp)
kwadrat(p1: p2, wspol: wsp)
 

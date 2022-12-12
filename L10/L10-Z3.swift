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
func odleglosc (p1 : Punkt , p2: Punkt) -> Double {
    var x1 = p1.x
    var y1 = p1.y
    var x2 = p2.x
    var y2 = p2.y
    return sqrt(pow(x2-x1, 2) + pow(y2-y1, 2))
}
var p1 : Punkt = wczytaj()
var p2 : Punkt = wczytaj()

print("Odleglosc \(odleglosc(p1: p1, p2: p2))")

import Foundation


struct rzutOszczepem{
    var id : Int
    var rzut1 : Double
    var rzut2 : Double
    var rzut3 : Double
}
var tab : [rzutOszczepem] = []
for i in 1...4{
    print("Osoba nr \(i), proba 1")
    guard let r1 = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    print("Osoba nr \(i), proba 2")
    guard let r2 = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    print("Osoba nr \(i), proba 3")
    guard let r3 = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    tab.append(rzutOszczepem(id : i, rzut1 : r1, rzut2: r2, rzut3: r3))
}
var srednia : [Double] = []

var max : Double = 0.0
var max_i : Int = 0
var min : Double = 2142133241.0
var min_i : Int = 0
for i in 0..<4{
    srednia.append(tab[i].rzut1 + tab[i].rzut2 + tab[i].rzut3 / 3.0)
    if(srednia[i] > max)
    {
        max = srednia[i]
        max_i = i
    }
    if(srednia[i] < min)
    {
        min = srednia[i]
        min_i = i
    }
}
print("Zawodnik z najwieksza srednia ma ID: \(tab[max_i].id), {\(tab[max_i].rzut1), \(tab[max_i].rzut2), \(tab[max_i].rzut3)}")
tab.remove(at:min_i)


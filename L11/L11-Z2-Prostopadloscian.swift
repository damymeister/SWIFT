
import Foundation
class Prostopadloscian : Prostokat {
    var h: Double = 0.0
    init(h: Double, a: Double , b: Double) {
        self.h = h
        super.init(a:a, b:b)
    }
    func polecalkowite() -> Double
    {
        return 2*(a*b + a*h + b*h)
    }
    func sumakrawedzi() -> Double
    {
        return 4*a + 4*b + 4*h
    }
    func objProst() -> Double
    {
        return a*b*h
    }
    override func wyswietl() {
        print("Dlugosc boku a: \(a)")
        print("Dlugosc boku b: \(b)")
        print("Wysokosc h: \(h)")
    }
    
}

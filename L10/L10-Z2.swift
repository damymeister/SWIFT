
import Foundation

func add (liczba1: Double, liczba2: Double) -> Double {
    return liczba1 + liczba2
}
func substract (liczba1: Double, liczba2: Double) -> Double {
    return liczba1 - liczba2
}
func multiply (liczba1: Double, liczba2: Double) -> Double {
    return liczba1 * liczba2
}
func divide (liczba1: Double, liczba2: Double) -> Double {
    return liczba1 / liczba2
}
func root (liczba1: Double) -> Double {
    if(liczba1<0)
    {
        fatalError("Wynik nie jest rzeczywisty")
    }
        return sqrt(liczba1)
}
print("1-Dodawanie, 2-Odejmowanie, 3-Mnozenie, 4-Dzielenie, 5-Pierwiastkowanie")
var wybor : Int = 0
guard let wybor = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
if (wybor > 5 || wybor < 1)
{
    fatalError("Wybrales zla akcje!")
}
print("Wprowadz liczbe nr 1")
guard let l1 = Double(readLine()!) else {
    fatalError("To nie jest liczba")
}
if(wybor < 5)
{
    print("Wprowadz liczbe nr 2")
    guard let l2 = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    switch(wybor){
    case 1:
        print("Wynik: \(add(liczba1: l1, liczba2:l2))")
        break
    case 2:
        print("Wynik: \(substract(liczba1: l1, liczba2:l2))")
        break
    case 3:
        print("Wynik: \(multiply(liczba1: l1, liczba2:l2))")
        break
    case 4:
        print("Wynik: \(divide(liczba1: l1, liczba2:l2))")
        break
    default:
        print("Zla operacja")
    }
}
else{
    print("Wynik: \(root(liczba1: l1))")
}

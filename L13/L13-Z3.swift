enum MathErros : Error {
    case Dive0
    case squareNegative
}
func validate0(a: Double, b: Double) throws{
    guard b != 0 else {
        throw MathErros.Dive0
    }
}
func validateNegative(a : Double) throws {
    guard a > 0 else {
        throw MathErros.squareNegative
    }
}
var a : Double = 3.0
var c : Double = -5.0
var z : Double = 0.0

do{
    try validate0(a: a, b: c)
    print("Dobry dzielnik")
}
catch MathErros.Dive0 {
    print("Dzielnik nie moze byc rowny 0")
}
catch {
    print("Cos innego")
}

do{
    try validateNegative(a: c)
    print("Sukces, pierwiastkowana jest dodatnia")
}
    catch MathErros.squareNegative {
        print("Error - Liczba jest ujemna")
    }
    catch{
        print("Cos innego")
    }

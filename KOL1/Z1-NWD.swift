import Foundation
var a : Int = 0
var b : Int = 0
print("Wprowadz pierwsza liczbe")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
print("Wprowadz druga liczbe")
guard let y = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
a = x 
b = y
 while(a != b){
       if(a>b)
       {
           a = a - b
       }
       else
       {
           b = b - a
        }
    }
print("Najwiekszy wspolny dzielnik to: \(a)")

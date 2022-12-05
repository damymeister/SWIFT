
import Foundation

struct loty{
    var wylot : [Int : String]
    var destination : [Int : String]
    var time : Int
}

var l : [loty] = []
print("Wprwoadz liczbe lotow")
guard let n = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita")
}
if(n<1)
{
    print("Liczba lotow musi wynosic conajmniej 1")
    for
}
for i in 0..<n{
    print("Podaj numer lotniska wylotowego \(i+1): ", terminator:" ")
    guard let nr1 = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    print("Podaj nazwe lotniska wylotowego \(i+1): ", terminator:" ")
    let nazw1 = readLine()!
    
    print("Podaj numer lotniska docelowego\(i+1): ", terminator:" ")
    guard let nrc1 = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    print("Podaj nazwe lotniska docelowego \(i+1): ", terminator:" ")
    let nazwc1 = readLine()!
    
    print("Podaj czas lotu w minutach \(i+1): ", terminator:" ")
    guard let czaslotu = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita")
    }
    l.append(loty(wylot:[nr1:nazw1], destination: [nrc1:nazwc1], time: czaslotu))
}
for i in 0..<n{
    print(
}

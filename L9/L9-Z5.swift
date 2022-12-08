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
    print("Numer lotniska wylotowego oraz jego nazwa: " ,terminator:" ")
    print(l[i].wylot)
    print("Numer lotniska docelowego oraz jego nazwa: " ,terminator:" ")
    print(l[i].destination)
    print("Czas lotu: " ,terminator:" ")
    print(l[i].time)
}
var suma : Int = 0

for i in 0..<n{
    suma += l[i].time
}
var sr : Int
 sr = suma / n
 print(sr)
 print("Wyswietlam dane lotow ktore trwaja dluzej niz srednia czasu wszystkich lotow")
for i in 0..<n{
if(l[i].time > sr )
{
    print("Numer lotniska wylotowego oraz jego nazwa: " ,terminator:" ")
    print(l[i].wylot)
    print("Numer lotniska docelowego oraz jego nazwa: " ,terminator:" ")
    print(l[i].destination)
    print("Czas lotu: " ,terminator:" ")
    print(l[i].time)
}
}
print("Usuwam dane lotow ktore trwaja krocej niz srednia czasu wszystkich lotow a nastepnie wyswietlam ")
l.removeAll { value in
return value.time < sr
}
for i in 0..<l.count{
    print("Numer lotniska wylotowego oraz jego nazwa: " ,terminator:" ")
    print(l[i].wylot)
    print("Numer lotniska docelowego oraz jego nazwa: " ,terminator:" ")
    print(l[i].destination)
    print("Czas lotu: " ,terminator:" ")
    print(l[i].time)
}

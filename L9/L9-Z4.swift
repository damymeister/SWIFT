import Foundation

var student : [Int : String] = [:]

for i in 1...5{
    print("Podaj identyfikator studenta nr \(i)", terminator:" ")
    guard let id = Int(readLine()!) else{
        fatalError("To nie jest liczba calkowita!")
    }
    print("Podaj nazwisko studenta nr \(i)", terminator:" ")
    let nazw : String = readLine()!
    student [id] = nazw
    }
for (idd,nazww) in student
{
    print("\(idd) - > \(nazww)")
}

print("Podaj identyfikator studenta ktorego szukasz:", terminator:" ")
guard let idnew = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita!")
}
if student.keys.contains(idnew){
    for (i,nazw) in student {
        if(idnew == i)
        {
            print("\(idnew) - > \(nazw)")
        }
    }
}
else
{
    print("Nie ma takiego studenta!")
}
print("Podaj identyfikator studenta ktorego chcesz usunac:", terminator:" ")
guard let idnew2 = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita!")
}
if student.keys.contains(idnew2){
    print("Usunieto studenta o ID: \(idnew2)")
    student.removeValue(forKey:idnew2)
}
else
{
    fatalError("Nie ma takiego studenta wiec nie mozna go usunac!")
}

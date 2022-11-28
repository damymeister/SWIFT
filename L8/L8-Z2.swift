import Foundation
enum ocena: Double, CaseIterable{
    case dwa = 2.0
    case trzy = 3.0
    case trzyipol = 3.5
    case cztery = 4.0
    case czteryipol = 4.5
    case piec = 5.0
}
var students : [(nazwisko: String, ocena1 : ocena, ocena2: ocena, ocena3 : ocena)] = []
for i in 1...3{
    print("Student nr \(i): ")
    print("Wpisz Nazwisko: ")
    var nazwisko : String = readLine()!
    print("Wpisz ocene nr 1: ")
    guard let o = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    var o1 = 0.0
    for i in ocena.allCases{
        if(o == i.rawValue)
        {
            o1 = o
            break
        }
    }
    print("Wpisz ocene nr 2: ")
    guard let o = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    var o2 = 0.0
    for i in ocena.allCases{
        if(o == i.rawValue)
        {
            o2 = o
            break
        }
    }
    print("Wpisz ocene nr 3: ")
    guard let o = Double(readLine()!) else {
        fatalError("To nie jest liczba")
    }
    var o3 = 0.0
    for i in ocena.allCases{
        if(o == i.rawValue)
        {
            o3 = o
            break
            
        }
    }
    students.append((nazwisko: nazwisko, ocena1 : ocena(rawValue:o1)!, ocena2:ocena(rawValue:o2)!, ocena3: ocena(rawValue: o3)!))
}
var tab : [Double] = []
var srednia : Double = 0.0
for i in 0..<3{
        srednia = ((students[i].ocena1.rawValue + students[i].ocena2.rawValue + students[i].ocena3.rawValue) / 3.0 )
    tab.append(srednia)
}

var s2 : [(student: (nazwisko: String, ocena1: ocena, ocena2: ocena, ocena3: ocena), srednia: Double)] = []
for i in 0..<3{
    s2.append((student: students[i], srednia: tab[i]))
}
let s3 = s2.sorted{
    $0.srednia > $1.srednia
}
for st in s3 {
    print("\(st.student.nazwisko) - \(st.srednia)")
    
}

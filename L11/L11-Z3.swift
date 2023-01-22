import Foundation
enum Kierunki : String, CaseIterable {
    case Informatyka = "Informatyka"
    case Matematyka = "Matematyka"
    case Biologia = "Biologia"
}
class Osoba {
    var imie: String = ""
    var nazwisko: String = ""
    var rokUr: Int = 0
    init(imie: String, nazwisko: String, rokUr: Int)
        {
            self.imie = imie
            self.nazwisko = nazwisko
            self.rokUr = rokUr
        }
        func wyswietl() {
            print("Imie: \(imie)")
            print("Nazwisko: \(nazwisko)")
            print("Rok urodzenia: \(rokUr)")
            }
        func age() -> Int
        {
            let currentYear : Int = 2022
            return currentYear - rokUr
        }
    
}


class Student : Osoba{
    var nrindex : Int = 0 
    var kierunek : Kierunki?
    var rokstudiow : Int = 0 
    var oceny : [Double] = []
    init(imie: String, nazwisko: String, rokUr: Int, nrindex : Int, kierunek : Kierunki?, rokstudiow : Int, oceny : [Double])
    {
        self.nrindex = nrindex
        self.kierunek = kierunek
        self.rokstudiow = rokstudiow
        self.oceny = oceny 
        super.init(imie : imie, nazwisko : nazwisko, rokUr : rokUr)
    }
      override func wyswietl() {
        print("Imie: \(imie)")
        print("Nazwisko: \(nazwisko)")
        print("Rok urodzenia: \(rokUr)")
        print("Nr indeksu: \(nrindex)")
        print("Kierunek studiow: \(kierunek!)")
        print("Rok studiow \(rokstudiow)")
               for i in 0..<5 {
            print("\(oceny[i])", terminator: ", ")
        }
        print()
    }
    func srednia() -> Double{
        var suma : Double = 0.0
        for i in 0..<5{
            suma += oceny[i]
        }
        return suma / 5.0
    }
}
func addData() -> [Student] {
print("Wprowadz liczbe studentow")
 guard let ile = Int(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
        if (ile <= 0) {
        fatalError("Liczba studentow musi wynosic co najmniej 1")
    }
    var tab : [Student] = []
for _ in 1...ile{
    print("Wprowadz imie studenta")
    let im = readLine()!
    print("Wprowadz nazwisko studenta")
    let nazw = readLine()!
    print("Wprowadz rok urodzenia studenta")
     guard let rokur = Int(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
        if(rokur < 0)
        {
            fatalError("Rok urodzenia nie moze byc ujemny")
        }
     print("Wprowadz nr indeksu studenta")
     guard let ind = Int(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
       if(ind<0)
       {
          fatalError("Numer indeksu musi byc wiekszy od zera")
       }
       print("Wprowadz rok studiow")
     guard var roczek = Int(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
       if(roczek < 1 || roczek > 5)
       {
           fatalError("Bledny rok studiow!")
       }
       var oceny : [Double] = []
        for i in 1...5{
            print("Wprowadz ocene nr \(i)")
            guard let oc = Double(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
       if (oc != 2.0 && oc != 3.0 && oc != 3.5 && oc != 4.0 && oc != 4.5 && oc != 5.0) {
                fatalError("Nieprawidlowa ocena")
            }
       oceny.append(oc)
        }
        print("Wprowadz nazwe kierunku studiow")
         let kier = readLine()!
         var tmp : String = ""
         for i in Kierunki.allCases {
             if(kier == i.rawValue)
             {
                 tmp = kier
                 break
             }
         }
         if kier == ""
         {
             fatalError("Bledny kierunek studiow")
         }
         tab.append(Student(imie: im, nazwisko : nazw, rokUr : rokur, nrindex : ind, kierunek : Kierunki(rawValue: tmp)!, rokstudiow : roczek, oceny : oceny ))
}
return tab
}
func jakiKierunek(tab: [Student])
{
   print("Wprowadz nazwe kierunku studiow")
   print("WYŚWIETLAM PO WPISANIU NAZWY KIERUNKU SZUKANEGO")
         let kier = readLine()!
         var tmp : String = ""
         for i in Kierunki.allCases {
             if(kier == i.rawValue)
             {
                 tmp = kier
                 break
             }
         }
         if tmp == ""
         {
             fatalError("Bledny kierunek studiow")
         }
         for i in 0..<tab.count{
             if(Kierunki(rawValue: tmp)! == tab[i].kierunek)
             {
                 tab[i].wyswietl()
             }
         }
}
var tab : [Student] = addData()
for i in 0..<tab.count {
    tab[i].wyswietl()
    print(tab[i].srednia())
}
jakiKierunek(tab:tab)

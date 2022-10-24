import Foundation

print("Wprowadz liczbe nr1")
guard let liczba1 = Int(readLine()!)
else{
    fatalError("To nie jest liczba")
}
print("Wprowadz liczbe nr2")
guard let liczba2 = Int(readLine()!)
else{
    fatalError("To nie jest liczba")
}
print("Wybierz operacje: 1-Dodawanie 2-Odejmowanie 3-Mnozenie 4-Dzielenie")
guard let operacja = Int(readLine()!)
else{
    fatalError("To nie jest liczba")
}
switch(operacja){
case 1: print("Dodawanie: \(liczba1)+\(liczba2)=\(liczba1+liczba2)")
case 2: print("Odejmowanie: \(liczba1)-\(liczba2)=\(liczba1-liczba2)")
case 3: print("Mnozenie: \(liczba1)*\(liczba2)=\(liczba1*liczba2)")
case 4: if (liczba2==0)
    {
    print("Dzielenie przez 0!")
}
    else
    {
        print("Dzielenie: \(liczba1):\(liczba2)=\(liczba1/liczba2)")
    }
default:print("Nie ma takiej operacji!")
}

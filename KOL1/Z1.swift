import Foundation
print("Wprowadz liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if(liczba<2)
{
    print("To nie sa liczby pierwsze")
}
for i in 2..<liczba {
    var pierwsza = true
    for j in 2...Int(pow(Double(i), 0.5)+1) {
        if (i % j == 0) {
            pierwsza = false
            break
        }
    }
    if (pierwsza || i == 2) {
        print(i)
    }
}

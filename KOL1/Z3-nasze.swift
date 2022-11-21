import Foundation
var szerokosc : Int = 0
var wysokosc : Int = 0
var tab2D : [[Int]] = []
print("Wprowadz szerokosc obrazu")
guard let szerokosc = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita!")
}
print("Wprowadz wysokosc obrazu")
guard let wysokosc = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita!")
}
for _ in 0 ..< wysokosc {
 var wiersz: [Int] = []
        for _ in 0 ..< szerokosc {
                wiersz.append(Int.random(in: 0...1024))//0-2^10
        }
tab2D.append(wiersz)
}
for i in 0 ..< tab2D.count {
    for j in 0 ..< tab2D[i].count{
        print("\(tab2D[i][j])", terminator:" ")
    }
print()
}
var min, max : Int
min = tab2D[0][0]
max = tab2D[0][0]
for i in 0 ..< wysokosc {
        for j in 0 ..< szerokosc {
                if(tab2D[i][j] > max){
                    max = tab2D[i][j]
                }
            if(tab2D[i][j] < min)
            {
                min = tab2D[i][j]
            }
        }
}
for i in 0 ..< wysokosc {
    for j in 0 ..< szerokosc
    {
        tab2D[i][j] = (tab2D[i][j] - min) / (max - min)
    }
}
for i in 0 ..< tab2D.count {
    for j in 0 ..< tab2D[i].count{
        print("\(tab2D[i][j])", terminator:" ")
    }
print()
}

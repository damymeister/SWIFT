import Foundation
var tab : [Double] = []
print("Wprowadz liczbe elementow ciagu")
guard let p = Int(readLine()!) else{
       fatalError("To nie jest liczba calkowita!")
    
}
if(p>30){
    fatalError("Liczba elementow ciagu musi byc mniejsza od 30")
}
for _ in 0..<p{
    print("Wprowadz liczbew")
    guard let liczba = Double(readLine()!) else{
           fatalError("To nie jest liczba calkowita!")
        
    }
    tab.append(liczba)
}
print("[", terminator:"")
for i in 0 ..< tab.count
{
    print("\(tab[i])", terminator:", ")
}
print("]")
var ile : Int = 0
for i in 0 ..< tab.count - 1
{
    if(tab[i]==0)
    {
        continue;
    }
    else{
        if(tab[i]<0 && tab[i+1] > 0)
        {
            ile = ile + 1
        }
        else if(tab[i]>0 && tab[i+1] < 0)
        {
            ile = ile + 1
        }
    }
}
print("Zmian znaku w ciagu jest: \(ile)")

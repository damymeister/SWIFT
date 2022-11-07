import Foundation
print("Wprowadz wyraz")
let wyraz : String = readLine()!
var czypalindrom : Bool = true

for i in 0...(wyraz.count/2){
    if(wyraz[wyraz.index(wyraz.startIndex, offsetBy:i)] != wyraz[wyraz.index(wyraz.endIndex, offsetBy: -i - 1)])
        {
        czypalindrom = false;
        print("Wyraz nie jest palindromem")
        break
        }
}
if(czypalindrom)
{
    print("Wyraz jest palindromem")
}

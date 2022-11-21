import Foundation
var a : Int = 0
var b : Int = 0
print("Wprowadz pierwsza liczbe")
guard let x = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
print("Wprowadz druga liczbe")
guard let y = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
a = x 
b = y
 while(a != b){
       if(a>b)
       {
           a = a - b
       }
       else
       {
           b = b - a
        }
    }



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








import Foundation
var tab: [Int] = []
print("Wprowadz poszukiwana liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
print("Wprowadz ilosc elementow tablicy")
guard let el = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
for _ in 0..<el
{
print("Wprowadz liczbe")
    guard let element = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
tab.append(element)
}
var min : Int = tab[0]
var min_index : Int = 0
var roznica : Int = abs(liczba - tab[0])
for i in 0..<el 
{
    if(abs(tab[i]-liczba)<roznica)
    {
        roznica = abs(tab[i] - liczba)
        min = tab[i]
        min_index = i
    }
}
print("Liczba najblizsza poszukiwanej \(min)")
print("Index najblizszy poszukiwanej \(min_index)")





import Foundation

var tab2D : [[Int]] = [[]]

print("Podaj liczbe zespolow")

guard let wiersze = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if(wiersze<=0)
{
    fatalError("Liczba wierszy musi byc dodatnia!")
}

print("Podaj liczbe osob w kazdym zespole")

guard let kolumny = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if(kolumny<=0)
{
    fatalError("Liczba kolumn musi byc dodatnia!")
}
for i in 0 ..< wiersze {
    tab2D.append( [] )
    for _ in 0 ..< kolumny {
        tab2D[i].append(Int.random(in: 500 ... 1500))
    }
}
print("[", terminator: "")
for i in 0 ..< wiersze {
    print("[", terminator: "")
    for j in 0 ..< kolumny {
        print("\(tab2D[i][j])", terminator:", ")
    }
    print("]", terminator: ", ")
}
print("]")
var min_w_wierszu : Int = tab2D[0][0]
var tab_min : [Int] = []
for i in 0..<wiersze
{
    min_w_wierszu = tab2D[i][0]
    for j in 0..<kolumny
    {
        if(tab2D[i][j]<min_w_wierszu)
        {
            min_w_wierszu = tab2D[i][j]
            
        }
    }
    tab_min.append(min_w_wierszu)
}
print("[", terminator: "")
for i in 0 ..< tab_min.count {
 print("\(tab_min[i])", terminator:", ")
}
print("]")
var max_tab_min : Int = tab_min[0]
for i in 0 ..< tab_min.count{
    if(tab_min[i]>max_tab_min)
    {
        max_tab_min = tab_min[i]
    }
}
print("Minimalna suma ktora zadowoli przynajmniej jednego pracownika z kazdego zespolu to: \(max_tab_min)")




import Foundation
var tab : [Int] = []
print("Podaj liczbe elementow tablicy")
guard let elementy = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if(elementy<0)
{
    fatalError("Liczba elementow tablicy musi byc wieksza od 0!")
}
print("Wprowadz CALKOWITE elementy tablicy")
for i in 1...elementy{
    print("Podaj \(i) element:")
    guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
    tab.append(liczba)
}
print("Wyswietlam tablice: ")
print(" ", terminator: "[")
for i in 0  ..< elementy {
    print("\(tab[i])", terminator: ", ")
}
print("]")

var index_start_ciagu: Int = 0
var dlugosc_ciagu: Int = 1
var max_dlugosc_ciagu : Int = 1
for i in 1  ..< elementy {
    if(tab[i]>tab[i-1])
    {
        dlugosc_ciagu += 1
        if(dlugosc_ciagu>max_dlugosc_ciagu)
        {
            max_dlugosc_ciagu = dlugosc_ciagu
            index_start_ciagu = i - dlugosc_ciagu + 1
        }
    }
    else
    {
      dlugosc_ciagu = 1
    }
}
if(max_dlugosc_ciagu==1)
{
    print("Ciag nie ma podciagu rosnacego!")
}
else
{
print("Dlugosc najwiekszego podciagu rosnacego to \(max_dlugosc_ciagu), a index jego poczatku to \(index_start_ciagu)")
for i in index_start_ciagu ..< index_start_ciagu + max_dlugosc_ciagu{
 print("\(tab[i])", terminator: ", ")
}
print("")
}





var n : Int = 0
var a : Int = 0
var b : Int = 0
var fibo : Int = 0
print("Podaj liczbę : ")
guard let licz = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
while fibo < licz
{
     switch(n){
        case 0: 
            a = 0 
            print(a)
        case 1: 
            b = 1 
            print(b)
        default: 
            fibo = a + b;
            a = b;
            b = fibo;
            if(fibo>licz)
            {
                break
            }
            else
            {
            print(b)
            }
    }
    n = n + 1 
}





print("Wprowadz liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
if(liczba < 2)
{
    print("Liczby mniejsze od 2 nie sa liczbami pierwszymi!")
}
var pierwsza : Bool = true
var i :Int = 2
while(i*i<=liczba)
{
    if(liczba % i == 0)
    {
        pierwsza = false
    }
    i = i + 1
}
if(pierwsza==true)
{
    print("Liczba jest pierwsza")
}
else
{
    print("Liczba nie jest pierwsza")
}









import Foundation
print("Podaj liczbe")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if(liczba<100)
{
    fatalError("Liczba musi byc trzycyfrowa!")
}
var ile : Int = 0
var sumacyfrliczby : Int = 1
var n : Int = liczba
while(n>10)
{
    sumacyfrliczby = n % 10
    n = n / 10
    ile = ile + 1
}
var sredniageo : Double = pow(Double(sumacyfrliczby), 1.0 / Double(ile))
print(sredniageo)





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
    print("Wyraz jest pal





var tab : [Int] = []
var n : Int = 0
var liczba : Int = 0
var lmin : Int = 0
var lmax : Int = 0
print("Wpisz ile liczb chcesz wprowadzic: ")
guard let n = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
if (n < 3) {
    fatalError("Minimalna liczba wyrazow ciagu to 3")
}
for i in 0...(n-1)
{
    print("Wprowadz liczbe")
    guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
    if(i>0 && liczba == tab[i-1])
    {
         fatalError("Nastepny element nie moze byc mniejszy od poprzedniego!")
    }
    else
    {
        tab.append(liczba)
    }
}
for i in 0...(n-3)
{
    if(tab[i] > tab[i + 1] && tab[i+2] > tab[i+1])
    {
        lmin += 1 
    }
     if(tab[i]<tab[i+1] && tab[i+2] < tab[i+1])
    {
        lmax += 1
    }
}
print("Liczba minimow w ciagu: \(lmin)")
print("Liczba maximow w ciagu: \(lmax)")






import Foundation
var rok : Int = 0
print("Wprowadz rok z przedzialu <2,3010>")
guard let rok = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita")
}
if(rok>=2 && rok <= 3010)
{
    var wiek: Int = ((rok-1)/100) + 1
    print("Rok: \(rok) - Wiek \(wiek)")
}
else
{
    print("Wprowadziles rok ze zlego zakresu!")
}



var pesel: String = ""
print("Wprowadz PESEL")
pesel = readLine()!
var pesellength: Int = pesel.count
var i = pesel.index(pesel.endIndex, offsetBy:-2)
var SexNumber : String = " "
SexNumber = String(pesel[i])
if(pesellength == 11){
switch(SexNumber){
    case "1","3","5","7","9":
    print("Mezczyzna!")
    case "2","4","6","8":
    print("Kobieta")
    default:
    print("Wprowadz prawidlowe dane!")
  }
}
else
{
print("Wprowadziles zle dane! Wpisz poprawny PESEL! (11 cyfr)")
}

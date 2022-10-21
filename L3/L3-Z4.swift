var ciag: String = ""
var znak: Character = "0"
var liczba: Int = 0

print("Wprowadz Ciag ")
if let tmp = readLine()
{
        ciag = tmp
}

print("Wprowadz znak")
let z : String = readLine()! //Znak musimy wprowadzic jako string
znak = z[z.startIndex]

print("Wprowadz liczbe")
if let tmp = Int(readLine()!)
{
        liczba = tmp
}
if (ciag.hasPrefix(String(znak))) {
    print("Znak \(znak) znajduje sie na poczatku ciagu!")
}
if (ciag.hasSuffix(String(znak))) {
    print("Znak \(znak) znajduje sie na koncu ciagu!")
}
    
if(liczba<ciag.count)
{
    if(String(ciag[ciag.index(ciag.startIndex, offsetBy: liczba)]) == String(znak))
    {
        print("Znak \(znak) znajduje sie na pozycji o \(liczba) oddalonej od poczatku ciagu!")
    }
    else
    {
        print("Znak \(znak) NIE znajduje sie na pozycji o \(liczba) oddalonej od poczatku ciagu!")
    }
     if(String(ciag[ciag.index(ciag.endIndex, offsetBy: -liczba-1)]) == String(znak))
    {
        print("Znak \(znak) znajduje sie na pozycji o \(liczba) oddalonej od konca ciagu!")
    }
    else
    {
        print("Znak \(znak) NIE znajduje sie na pozycji o \(liczba) oddalonej od konca ciagu!")
    }
}
else
{
    print("Wprowadzona liczba jest wieksza niz dlugosc ciagu!")
}

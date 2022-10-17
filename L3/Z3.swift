import Foundation

var imie: String = ""
var drugieimie: String = ""
var nazwisko :String = ""
var rokurodz : Int = 0
print("Wprowadz imie: ")
if let tmp = readLine()
{
        imie = tmp
}
print("Wprowadz Drugie imie: ")
if let tmp = readLine()
{
        drugieimie = tmp
}
print("Wprowadz Nazwisko: ")
if let tmp = readLine()
{
        nazwisko = tmp
}
print("Wprowadz Rok Urodzenia: ")
if let tmp = Int(readLine()!)
{
        rokurodz = tmp
}
var ciag1 = imie + " " + drugieimie
+ " " + nazwisko + "-" + String(rokurodz)
print(ciag1)
//Polecenie 2
let drugieimie_start : Int = imie.count + 1
let drugieimie_koniec : Int = imie.count + drugieimie.count + 2
var range = ciag1.index(ciag1.startIndex,offsetBy: drugieimie_start) ..< ciag1.index(ciag1.startIndex,  offsetBy: drugieimie_koniec)
ciag1.removeSubrange(range)
print(ciag1)
//Polecenie 3
let rok_start : Int = imie.count + 1 + nazwisko.count + 1
var range2 =
ciag1.index(ciag1.startIndex,offsetBy: rok_start) ..< ciag1.index(ciag1.endIndex, offsetBy: 0)
ciag1.removeSubrange(range2)
let wiek : Int = 2022 - rokurodz
ciag1.append(String(wiek))
print(ciag1)

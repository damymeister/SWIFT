var oceny : [Double] = []
var wagi : [Int] = []
for i in 0...2
{
print("Wprowadz Ocene nr: "+String(i))
    if let tmp = Double(readLine()!)
    {
        oceny.append(tmp)
    }
}
for j in 0...2
{
print("Wprowadz Wage ocen: "+String(j))
if let tmp = Int(readLine()!)
    {
        wagi.append(tmp)
    }
}
var licznik : Double = 0.0
var mianownik : Int = 0
for z in 0...2
{
    licznik += (oceny[z] * Double(wagi[z]))
    mianownik += wagi[z]
}
var srednia : Double
srednia = licznik / Double(mianownik)
print("Srednia jest rowna: " + String(srednia))

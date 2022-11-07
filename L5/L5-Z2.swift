var liczba : Int = 0
print("Podaj liczbę : ")
guard let liczba = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
var pierwsza : Bool = true
var i :Int = 2
while(i*i<=liczba){
    if(liczba % i == 0)
    {
        pierwsza = false
        print("liczba nie jest pierwsza")
    }
    i = i + 1
}
if(pierwsza)
{
    print("Liczba jest pierwsza")
}

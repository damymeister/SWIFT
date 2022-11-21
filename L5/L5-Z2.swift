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

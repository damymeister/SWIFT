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

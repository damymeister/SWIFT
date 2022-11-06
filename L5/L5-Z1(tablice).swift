var n : Int = 0
var fibo : [Int] = []
var fibInt : Int = 0
print("Podaj liczbę : ")
guard let licz = Int(readLine()!) else {
    fatalError("To nie jest liczba")
}
while fibInt<licz{
    switch(n){
        case 0: fibo.append(0)
        case 1: fibo.append(1)
        default: 
        fibInt = fibo[fibo.endIndex - 1 ] 
        if(fibInt>licz)
            {
                break
            }
            else
            {
            fibo.append(fibo[n-2]+fibo[n-1])
            }
    }
    n=n+1
}
if(fibInt < licz)
{
print(fibo)
}
else
{
fibo.removeLast()
print(fibo)
}

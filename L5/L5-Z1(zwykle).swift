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

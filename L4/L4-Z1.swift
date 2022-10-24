
var rok : Int = 0
print("Wprowadz rok")
guard let rok = Int(readLine()!) else{
    fatalError("To nie jest liczba calkowita")
}
if((rok % 4 == 0 && rok % 100 != 0 ) ||  rok % 400 == 0)
   {
    print("Rok \(rok) jest przestepny!")
}
   else
   {
    print("Rok \(rok) nie jest przestepny!")
}


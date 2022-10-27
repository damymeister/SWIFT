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

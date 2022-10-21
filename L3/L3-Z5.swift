var ciag1: String = ""
var ciag2: String = ""
var prefixx: String = ""
var sufixx: String = ""
print("Wprowadz Ciag nr.1")
if let tmp = readLine()
{
        ciag1 = tmp
}
print("Wprowadz Ciag nr.2")
if let tmp = readLine()
{
        ciag2 = tmp
}
if(ciag1==ciag2)
{
    print("Ciagi sa rowne!")
}
else
{
    print("Ciagi nie sa rowne!")
}
print("Wprowadz Prefix")
if let tmp = readLine()
{
        prefixx = tmp
}
if ciag1.hasPrefix(prefixx){
print("Ciąg: \(ciag1) zawiera prefiks \(prefixx)" )
}
else
{
    print("Ciąg: \(ciag1) NIE zawiera prefiksu \(prefixx)" )
}
if ciag2.hasPrefix(prefixx) 
{
print("Ciąg: \(ciag2) zawiera prefiks \(prefixx)" )
}
else
{
    print("Ciąg: \(ciag2) NIE zawiera prefiksu \(prefixx)" )
}


print("Wprowadz Sufix")
if let tmp = readLine()
{
        sufixx = tmp
}
if ciag1.hasSuffix(sufixx)
{
print("Ciąg: \(ciag1) zawiera sufiks \(sufixx)" )
}
else
{
    print("Ciąg: \(ciag1) NIE zawiera sufiksu \(sufixx)" )
}
if ciag2.hasSuffix(sufixx) 
{
print("Ciąg: \(ciag2) zawiera sufiks \(sufixx)" )
}
else
{
    print("Ciąg: \(ciag2) NIE zawiera sufiksu \(sufixx)" )
}

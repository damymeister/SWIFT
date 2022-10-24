print("Wprowadz znak")
var znak : String = readLine()!
var c : Character = znak[znak.startIndex]
var u : String = c.lowercased()
switch(u){
case "a","e","i", "o", "u", "y":
    print("Samogloska")
case "b"..."d", "f"..."h", "j"..."n", "p"..."t", "v"..."x", "z":
    print("Spolgloska")
case "0"..."9": print("Cyfra")
default: print("Inny znak!")
}

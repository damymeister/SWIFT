import Foundation

print("Wprowadz kod pocztowy")
let kod = readLine()
switch (kod!){
case let x where x.hasPrefix("09"):
    print("Jestes z wojewodztwa Lubelskiego!")
case let x where x.hasPrefix("20"):
    print("Jestes z wojewodztwa Lubelskiego!")
case let x where x.hasPrefix("21"):
    print("Jestes z wojewodztwa Lubelskiego!")
case let x where x.hasPrefix("22"):
    print("Jestes z wojewodztwa Lubelskiego!")
case let x where x.hasPrefix("23"):
    print("Jestes z wojewodztwa Lubelskiego!")
case let x where x.hasPrefix("24"):
    print("Jestes z wojewodztwa Lubelskiego!")
default:
    print("Nie jestes z wojewodztwa lubelskiego :(")
}

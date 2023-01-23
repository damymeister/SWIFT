import Foundation


var pesel : String = "01221206677"
var peselchar = Array(pesel)
print(peselchar)


let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let date = formatter.date(from: "2021/12/20")
let date2 = formatter.date(from: "2022/12/20")
var i = date!.distance(to:date2!)
var z = i / 31536000
print(z)

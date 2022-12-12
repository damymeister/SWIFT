
import Foundation

func liczby () -> (Int, Int, Int){
    return (Int.random(in: 1...250), Int.random(in: 1...250), Int.random(in: 1...250))
}
func max (l: (Int, Int,Int)) -> Int{
    var arr : [Int] = [l.0,l.1,l.2]
    return arr.max()!
}
func min(l : (Int,Int,Int)) -> Int {
    var arr : [Int] = [l.0,l.1,l.2]
    return arr.min()!
}
func minmax(l: (Int,Int,Int)) -> (Int, Int) {
    var arr : [Int] = [l.0,l.1,l.2]
    return (arr.min()!, arr.max()!)
}
func show(l : (Int,Int,Int)) -> Void{
    print(l)
}
var licz : (Int,Int,Int) = liczby()
show(l:licz)
print(max(l:licz))
print(min(l:licz))
print(minmax(l:licz))

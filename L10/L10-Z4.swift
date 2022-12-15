import Foundation

var tab : [Int] = []

func wczytaj(tab: [Int]) -> [Int]
{ 
print("Wprowadz ilosc elementow tablicy")
    var tab2 : [Int] = tab
    guard let n = Int(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
    for _ in 0..<n{
     print("Wprowadz element tablicy")
        guard let liczba = Int(readLine()!) else {
           fatalError("To nie jest liczba!")
       }
        tab2.append(liczba)
    }
    return tab2
}


func wyswietl(tab: [Int]) {
print("Elementy tablicy:")
    for i in tab 
         {
           print("\(i)", terminator: ", ")
         }
         print(" ")
}

func min(tab: [Int]) -> (min: Int, min_index:Int)
{
var min : Int = tab[0]
var min_index : Int = 0 
    for i in 1..<tab.count{
        if(tab[i] < min)
        {
            min = tab[i]
            min_index = i
        }
    }
    return (min, min_index)
}
func max(tab: [Int]) -> (max: Int, max_index:Int)
{
var max : Int = tab[0]
var max_index : Int = 0 
    for i in 1..<tab.count{
        if(tab[i] > max)
        {
            max = tab[i]
            max_index = i
        }
    }
    return (max, max_index)
}
func switchh(tab: [Int]) -> [Int]{
    var tab2 : [Int] = tab
    var mini = min(tab:tab2)
    var maxi = max(tab:tab2)
    tab2[mini.min_index] = maxi.max
    tab2[maxi.max_index] = mini.min
    return tab2
}
func averageTab(tab: [Int]) -> Double{
    var suma : Int = 0
    var srednia : Double = 0.0
    for i in 0..<tab.count{
        suma += tab[i]
    }
    srednia = Double (suma) / Double(tab.count)
    return srednia
}
tab = wczytaj(tab:tab)
wyswietl(tab: tab)
var mini = min(tab:tab)
print("Element minimalny to: \(mini.min), a jego index to \(mini.min_index)")
var maxi = max(tab:tab)
print("Element minimalny to: \(maxi.max), a jego index to \(maxi.max_index)")
tab = switchh(tab:tab)
print("Wyswietlam tablice po zamianie elementu najwiekszego z najmniejszym")
wyswietl(tab:tab)
var srednia : Double = averageTab(tab:tab)
print("Srednia elementow tablicy jest rowna: \(srednia)")

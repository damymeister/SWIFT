//
//  main.swift
//  L6-Z2
//
//  Created by student on 14/11/2022.
//

import Foundation

var tab1: [Int] = []
var tab2: [Int] = []
print("Podaj liczbe elementow tablicy")

guard let liczbaEl = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if(liczbaEl <= 0)
{
    fatalError("Liczba elementow tablicy musi byc wieksza od zera!")
}

for _ in 1...liczbaEl {
    tab1.append(Int.random(in: 1...20))
    tab2.append(Int.random (in: 1...20))
}
var zawiera: Int = 0
for i in 0...(liczbaEl-1)
{
    if(tab2.contains(tab1[i]))
    {
        zawiera += 1
    }
}
print("Wyswietlam tablice nr 1")
print("[", terminator: "")
for i in 0...(liczbaEl-1) {
    print("\(tab1[i])", terminator: ", ")
}
print("]")

print("Wyswietlam tablice nr 2")

print("[", terminator: "")
for i in 0...(liczbaEl-1) {
    print("\(tab2[i])", terminator: ", ")
}
print("]")

if(zawiera == liczbaEl)
{
    print("Tablice zawieraja identyczne elementy")
}
else
{
    print("Tablice nie zawieraja tych samych elementow")
}

//
//  main.swift
//  L6-Z2
//
//  Created by student on 14/11/2022.
//

import Foundation

var tab: [Int] = []

print("Podaj liczbe elementow tablicy")

guard let liczbaEl = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}

if(liczbaEl <= 0)
{
    fatalError("Liczba elementow tablicy musi byc wieksza od zera!")
}
print("Wprowadz \(liczbaEl) elementy(ow)")
for _ in 1...liczbaEl {
    guard let eltab = Int(readLine()!) else {
        fatalError("To nie jest liczba calkowita")
    }
    tab.append(eltab)
}

print("Wczytaj liczbe ktora chcesz sprawdzic")
guard let sprlicz = Int(readLine()!) else {
    fatalError("To nie jest liczba calkowita")
}
if(tab[0]==sprlicz)
{
    print("Podana liczba jest pierwszym elementem tablicy")
}
else
{
    print("Podana liczba NIE jest pierwszym elementem tablicy")
}
if(tab[tab.count - 1]==sprlicz)
{
    print("Podana liczba jest ostatnim elementem tablicy")
}
else
{
    print("Podana liczba NIE jest ostatnim elementem tablicy")
}

//
//  main.swift
//  L2-Z4
//
//  Created by student on 10/10/2022.
//

import Foundation
var a: Double = 0.0
var b : Double = 0.0
var z: Double = 0.0
var cenalistwy: Double = 0.0
var szerdrzwi: Double = 0.0
print("Wprowadz dlugosc pokoju a: ")
if let tmp = Double(readLine()!)
{
    a=tmp
}
print("Wprowadz szerokosc pokoju b: ")
if let tmp = Double(readLine()!)
{
    b=tmp
}
print("Wprowadz dlugosc korytarza z: ")
if let tmp = Double(readLine()!)
{
    z=tmp
}
print("Wprowadz szerokosc drzwi: ")
if let tmp = Double(readLine()!)
{
    szerdrzwi=tmp
}
print("Wprowadz cene za metr listwy: ")
if let tmp = Double(readLine()!)
{
    cenalistwy=tmp
}
var pokoj: Double = 0.0
var korytarz: Double = 0.0
pokoj = a + a + b + b - szerdrzwi
korytarz = z + z + b + b - szerdrzwi - szerdrzwi
print("W pokoju do polozenia jest metrow: " + String(format: "%.1f", pokoj))
print("W korytarzu do polozenia jest metrow: " + String(format: "%.1f", korytarz))
print("Listwy beda kosztowac :" + String(format: "%.1f", (pokoj+korytarz)*cenalistwy))

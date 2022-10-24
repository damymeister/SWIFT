//
//  main.swift
//  L4-Z3
//
//  Created by student on 24/10/2022.
//

import Foundation
print("Wprowadz Srednia ze studiow")
guard let srednia = Float(readLine()!)
else{
    fatalError("To nie jest liczba")
}
        
switch(srednia){
    case 2.0...3.0: print("0")
    case 3.0...4.0: print("100")
    case 4.0...4.5: print("150")
    case 4.5...5.0: print("200")
        default: print("Srednia jest nieprawidlowa")
}

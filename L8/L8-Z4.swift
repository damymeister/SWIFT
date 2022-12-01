import Foundation
enum Miesiac: CaseIterable {
    case Styczen
    case Luty
    case Marzec
    case Kwiecien
    case Maj
    case Czerwiec
    case Lipiec
    case Sierpien
    case Wrzesien
    case Pazdziernik
    case Listopad
    case Grudzien
}
var msc = Miesiac.Sierpien
switch(msc)
{
    case .Grudzien, .Styczen, .Luty:
    print("Pora roku to zima!")
    case .Marzec, .Kwiecien, .Maj:
    print("Pora roku to wiosna!")
    case .Czerwiec, .Lipiec, .Sierpien:
    print("Pora roku to lato!")
    case .Wrzesien, .Pazdziernik, .Listopad:
    print("Pora roku to jesien!")
}

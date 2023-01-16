enum EuronetErros : Error {
    case NoMoney
    case NoCashInEuronet
    case tooMuchToday
    case noNominals
    case Other
}


class Euronet {
    var notesInBank : [(n: Int, c: Int)] = []
    func cashInBank () -> Int{
        var suma : Int = 0
        for i in 0..<notesInBank.count{
            suma += notesInBank[i].n * notesInBank[i].c
        }
        return suma
    }
    init(bn : [(n:Int, c: Int)])
    {
        self.notesInBank = bn
    }
}


func validate (b:Euronet, c: Int, x : Int) throws{
    guard x <= CashOnKonto else {
        throw EuronetErros.NoMoney
    }
    guard x <= limit else
    {
        throw EuronetErros.tooMuchToday
    }
    guard x <=
}




var b : Euronet = Euronet(bn: [(n: 100, c: 30)], [(n: 50, c: 20)], [(n: 20, c:100)])
var CashOnKonto : Int = 6160
var limit : Int = 5000
guard let x = Int(readLine()!) else {
    fatalError("Bledna kwota")
}
dokonczyc

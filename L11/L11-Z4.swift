class StudentNaErasmusie : Student {
    var nazwaUcz : String = ""
    var dataRozp : Int = 0
    var dataZakon : Int = 0 
    var kursy : [(nazwa: String, ocena: Double)] = []
     init(imie: String, nazwisko: String, rokUr: Int, nrindex : Int, kierunek : Kierunki?, rokstudiow : Int, oceny : [Double], nazwaUcz : String, dataRozp : Int, dataZakon: Int, kursy : [(nazwa: String, ocena: Double)])
    {
        self.nazwaUcz = nazwaUcz
        self.dataRozp = dataRozp
        self.dataZakon = dataZakon
        self.kursy = kursy
        super.init(imie : imie, nazwisko : nazwisko, rokUr : rokUr, nrindex : nrindex, kierunek : kierunek, rokstudiow : rokstudiow, oceny : oceny)
    }
    func show (){
        wyswietl()
        print("Nazwa uczelni zagranicznej \(nazwaUcz)")
        print("Data rozpoczecia \(dataRozp)")
        print("Data zakonczenia \(dataZakon)")
                for i in 0..<kursy.count {
            print("Nazwa kursu - \(kursy[i].nazwa) -> Ocena z kursu - \(kursy[i].ocena)", terminator: ", ")
        }
        print()
    }
    func czasNaEras () -> Int {
        return dataZakon - dataRozp
    }
    
}
var ob = StudentNaErasmusie(imie: "Mateusz", nazwisko : "Adamczyk", rokUr : 2001, nrindex : 95357, kierunek : Kierunki.Informatyka, rokstudiow: 3, oceny : [3,4,3,2,2], nazwaUcz : "Harvard", dataRozp : 2022, dataZakon : 2023, kursy : [(nazwa: "JAVA", ocena : 5.0)])
ob.show()

#to be continued

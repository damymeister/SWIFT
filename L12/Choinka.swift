class Choinka : Drzewo {
    var lpoziomow : Int = 0
    var hUnderGalaz : Int = 0
    var ileozdob : Int = 0
    var Rodzajozdob : [Ozdoba?] = []
    init(wysokosc: Int, rodzaj: RodzajDrzewa?, rokzasadzenia: Int, lpoziomow: Int, hUnderGalaz : Int, ileozdob : Int, Rodzajozdob: [Ozdoba?] = [])
    {
        self.lpoziomow = lpoziomow
        self.hUnderGalaz = hUnderGalaz
        self.ileozdob = ileozdob
        self .Rodzajozdob = Rodzajozdob
        super.init(wysokosc: wysokosc, rodzaj: rodzaj, rokzasadzenia: rokzasadzenia)
    }
    override func wyswietl() {
        print("Liczba poziomow \(lpoziomow)")
        print("Wysokosc pnia ponizej galezi \(hUnderGalaz)")
        print("Liczba ozdbow \(ileozdob)")
        print("Rodzaj ozdob \(Rodzajozdob)")
    }
    func rysujChoinke(layercount:Int, levelcount:Int) {
    var length = layercount * levelcount
    var starcount = 1
    var spacecount = length
    for _ in 1...layercount {
        for _ in 1...levelcount {
            for _ in 1...spacecount{
                print(" ",terminator: "")
            }
            for _ in 1...starcount {
                    print("*",terminator: "")
            }
            print()
            starcount += 2
            spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3
            {
              starcount -= 2
              spacecount += 1
                
            }
            else
            {
              starcount -= 4
              spacecount += 2
            }
        }
            spacecount = length;
            for _ in 1...3 { //3 to wysokość pnia
              for _ in 1...spacecount-1 {
                          print(" ",terminator: "")
                      }
              for _ in 1...3 {
                  print("#",terminator: "")
              }
              print()
                
            }
        }
    func rysujOzdobionaChoinke(layercount: Int, levelcount: Int){
        var length = layercount * levelcount
        var starcount = 1
        var spacecount = length
        for _ in 1...layercount {
            for _ in 1...levelcount {
                for _ in 1...spacecount{
                    print(" ",terminator: "")
                }
                for i in 1...starcount {
                    if(i % 2 == 1)
                    {
                        let r : Int = Int.random(in: 0..<self.ileozdob)
                        let o : String = self.Rodzajozdob[r]?.rawValue ?? "o"
                        print("\(o)", terminator: "")
                    }
                    else
                    {
                        print("*",terminator: "")
                    }
                }
                print()
                starcount += 2
                spacecount -= 1
                }
                starcount = starcount - 2
                spacecount = spacecount + 1
                if levelcount <= 3
                {
                  starcount -= 2
                  spacecount += 1
                    
                }
                else
                {
                  starcount -= 4
                  spacecount += 2
                }
            }
                spacecount = length;
                for _ in 1...3 { //3 to wysokość pnia
                  for _ in 1...spacecount-1 {
                              print(" ",terminator: "")
                          }
                  for _ in 1...3 {
                      print("#",terminator: "")
                  }
                  print()
                    
                }
        
    }
    func ozdobyDoKupienia()
    {
        
    }
}

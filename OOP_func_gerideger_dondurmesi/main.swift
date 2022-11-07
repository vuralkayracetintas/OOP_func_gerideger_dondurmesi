
func DegerGetir()-> String{
    return "Fonksiyon içi deger"
}

var gelenDeger = DegerGetir()

print(gelenDeger)


func Topla(sayi1 :Int,sayi2:Int) -> Int{
    return sayi1 + sayi2
}

var toplam = Topla(sayi1: 10, sayi2: 10)
print(toplam)




func CokluDeger()->(d1:String,d2:Int){
    return("",23)
}



func Karsilastir(sayi1:Int,sayi2:Int)->(kucuk:Int,buyuk:Int){
    if sayi1 < sayi2 {
        return (sayi1 , sayi2)
    }
    else{
        return (sayi2, sayi1)
    }
}

var sonuc = Karsilastir(sayi1: 10  , sayi2: 20)
print(sonuc)


// Elimizde bulunan puan listesine göre bu listedeki en düşük puanıni eb yüksek puanların hesaplanıp kullanıcıy göstericez


var puanlar = [10,20,20,30,12,50,49]

func PuanlarıHesapla(Puanlar puanlar :[Int])->(dusuk: Int,yuksek:Int,toplamSonuc:Int){
    var dusuk = puanlar[0]
    var yuksek = puanlar[0]
    var toplamSonuc = 0
    
    for puan in puanlar {
        if puan < dusuk{
            dusuk = puan
        }else if puan > yuksek{
            yuksek = puan
        }
        else{
            toplamSonuc += puan
        }
    }
    return (dusuk,yuksek,toplamSonuc)
}


func PuanlarıHesapla2(Puanlar puanlar :Int...)->(dusuk: Int,yuksek:Int,toplamSonuc:Int){
    var dusuk = puanlar[0]
    var yuksek = puanlar[0]
    var toplamSonuc = 0
    
    for puan in puanlar {
        if puan < dusuk{
            dusuk = puan
        }else if puan > yuksek{
            yuksek = puan
        }
        else{
            toplamSonuc += puan
        }
    }
    return (dusuk,yuksek,toplamSonuc)
}
let sonucPuanlar = PuanlarıHesapla(Puanlar: [10,20,20,30,12,50,49])
let sonucPuanlar2 = PuanlarıHesapla2(Puanlar: 10,20,20,30,12,50,49)
print("En dusuk \(sonucPuanlar.dusuk)")
print("En yuksek \(sonucPuanlar.yuksek)")
print("En toplam \(sonucPuanlar.toplamSonuc)")


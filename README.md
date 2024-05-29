Trailer :

https://github.com/AhmetRecaiElcan/list-and-grid/assets/97764491/d455604c-7e96-4032-b9b4-09ab4f1a8826






stateless widget = tek düzenlemelik widget
stetefull widget = düzenlenemez widget

TextEditingController _textController =TextEditingController();
 bu satırda texteditingcontroller bir kural değişken _textController değişkeni saklayacak isim eşittir koyunca da atama yapıyor....
 TextEditingController, metin giriş alanlarının içeriğini okumak veya değiştirmek gibi işlemleri yapmak için kullanılır. 

 void initstate sadece bir kez çalıştır 
 .addListener değeri değiştiğinde şu değişkeni yap demek....
 Column = Dikey uygulama dikeymi yatay mı olucak onu belli eder
 Horizontal = Yatay...
 Boyut, kenar boşlukları, renk, gölge gibi birçok stil özelliği Container ile ekleriz
 Padding = Boşluk bırakma işlemleri için kullanılır
 EdgeInsets.symmetric = bu bir kalıptır simetrik bir şekilde şu kadar hizala demektir containerde paddingin içinde bulunur..
 Child ve Children genellikle column ve container içinde bulunur
 decoration = dediğinde kutunun özelliklerini belirlersin yani bir widgetin stilini belirlemek ve görünümü özelleşirmek için kullanılır...
 border = sınır
 Expanded = genellikle row veya columnun içinde bulunur kaplamak gibi bir anlamı var ama tam anlamadım...
 gridDelegate = GridView widgetinin görünümünü değiştirek için kullanılır...
 SliverGridDelegateWithFixedCrossAxisCount = Gridwievin satır ve sütun sayısını değiştirmeye yarar 
 crossAxisCount = yatay eksende kaç sütun olsun
 itemCount = GridView.builder içinde bulunan bir özelliktir ve grid içinde bulunan eleman sayısını kontrol eder.
 int.tryParse = İçine ne yazdıysan onu tam sayıya dönüştürmeye çalışır başarılı olursa sonucu başarısız olursa null değerini verir...
 ?? = null dönerse yani başarısız olursa demek
 ?? = 0 kod başarısız olursa 0ı ver demek
 itemBuilder = GridView.builder içindeki bir özelliktir her bir elemanın içeriğini oluşturmak için kullanılır...
 context = durum
 Random().nextDouble() =rasgele bir ondalık sayı oluşturur.
 * 0xFFFFFF ile bu sayı 0 ile 16777215 arasında bir tamsayıya dönüştürülür (FFFFFF hexadecimal olarak 16777215'e karşılık gelir).
 toıİNT() = Tam sayıya dönüştür..
 << 0 = sayı sola kaydır ve işaretsiz tam sayıya çevir...
 withOpacity(1.0) = rengi tamamen opak yap..
 Text('${index + 1}') = elemanın sıra numarasını bir arttırarak ilerle.




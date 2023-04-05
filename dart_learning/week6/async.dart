
Future<void> main(List<String> args) async {
  print("a");
  //5 sn bekle sonra gel 2 sn içinde hiçbir müşteri alma
  
  await Future.forEach([1,2,3,4,5,6], (int element) async { //buradaki ise a dan sonra islem bittileri yazıyor en son ab ye geçiyor.
    await Future.delayed(Duration(seconds: 2));  //buradaki await de islemler arasında 2 sn bekleyip yazdırtıyor.
    print("Islem bitti $element");
  });

  //await Future.delayed(Duration(seconds: 2));  //burada await ve future kodları yardımıyla 2 sn bekleyip sonraki müşteriyi aldık
  print("ab");  //asenkron yapılardır futurelar .

  print("**********************************");
  
  print("Hello1");   
  Future.delayed(Duration(seconds: 0)).whenComplete((){             //buradaki hello örnegi şunu kanıtlıyor önce main yani ana kodlar yapılıyor
    print("Hello2");                                                //daha sonra future kodları devreye giriyor bundan dolayı sıralama 1 2 3 4 degilde 
  });                                                               // 1 3 2 4 olarak yazıldı ekrana bu mantık önemli.
  print("Hello3");
  Future.delayed(Duration(seconds: 0)).whenComplete((){
    print("Hello4");
  });
}


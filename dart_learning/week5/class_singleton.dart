
void main(List<String> args) {
  //final newProduct =Product();    //bu temel yöntem fakat adam sürekli bunla ugraşmak istemiyorsa 
  //newProduct.money

  final newProduct = Product.money;  //class içindeki static kullanımı burada işe yaradı
  calculateMoney();
}

void calculateMoney() {
  if (Product.money > 5){
    print("5 tl daha ekledik");
    Product.money += 5;
    print(Product.money);
  }

productConfig.instance.apiKey;

}

class Product {
  static int money = 10;  //static sayesinde yukarıdaki temel gibi degil de direkt tek seferde cagırablıyorsun.
}

class productConfig {
  static final productConfig instance = productConfig._("a");
  final String apiKey;

  productConfig._(this.apiKey);
}
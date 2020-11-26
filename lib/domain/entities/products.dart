class Product {
  int barcode;
  int price;
  String name;
  String description;
  String url;
  String sku;
  String bran;
  Product({this.barcode, this.name, this.description, this.url, this.sku, this.bran,this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      barcode: json['Barcode'] ?? 0,
      price: json['Price'] ?? 0,
      name: json['Name'] ?? "",
      description: json['Description'] ?? "",
      bran: json['Bran'] ?? "",
      url: json['url'] ?? "",
      sku: json["SKU"]?? ""
    );
  }

  static List<Product> fromJSONList(List<dynamic> jsonlist) {
    List<Product> items = List<Product>();
    jsonlist.forEach((dynamic json) {
      items.add(Product.fromJson(json));
    });
    return items;
  }
}

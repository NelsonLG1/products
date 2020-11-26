class Pais {
  int id;
  String name;
  String symbol;
  String url;
  String code;
  String bran;
  Pais({this.id, this.name, this.symbol, this.url, this.code, this.bran});

  factory Pais.fromJson(Map<String, dynamic> json) {
    return Pais(
        id: json['ID'] ?? 0,
        name: json['Name'] ?? "",
        symbol: json['Symbol'] ?? "",
        bran: json['Bran'] ?? "",
        url: json['UrlImage'] ?? "",
        code: json["Code"] ?? "");
  }

  static List<Pais> fromJSONList(List<dynamic> jsonlist) {
    List<Pais> items = List<Pais>();
    jsonlist.forEach((dynamic json) {
      items.add(Pais.fromJson(json));
    });
    return items;
  }
}

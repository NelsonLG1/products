
import '../../domain/entities/products.dart';
import '../../managers/http_manager.dart';

class ProductApiProvider {
  final HttpManager httpManager = HttpManager();
  ProductApiProvider._privateConstructor();

  static final ProductApiProvider _instance =
      ProductApiProvider._privateConstructor();

  factory ProductApiProvider() {
    return _instance;
  }

  Future<List<Product>> getProducts() async {
    var response = await httpManager.get('Nelson',"1");
    List responseJson = response['data']['Items'];
    var productList = Product.fromJSONList(responseJson);
    return productList;
  }

  Future getProduct(String idProduct) async {
    return await httpManager.get('Product/$idProduct',"1");
  }
}

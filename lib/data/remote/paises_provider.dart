
import '../../domain/entities/paises.dart';
import '../../managers/http_manager.dart';

class PaisApiProvider {
  final HttpManager httpManager = HttpManager();
  PaisApiProvider._privateConstructor();

  static final PaisApiProvider _instance =
      PaisApiProvider._privateConstructor();

  factory PaisApiProvider() {
    return _instance;
  }

  Future<List<Pais>> getPaises() async {
    var response = await httpManager.get('testing',"2");
    List responseJson = response['data']['Items'];
    var paisList = Pais.fromJSONList(responseJson);
    return paisList;
  }

  Future getPais(String idPais) async {
    return await httpManager.get('Pais/$idPais',"2");
  }
}

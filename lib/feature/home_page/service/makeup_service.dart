import 'package:vexana/vexana.dart';

import '../model/makeup_model.dart';

abstract class INetworkService {
  final INetworkManager networkManager;

  INetworkService(this.networkManager);
  Future<List<MakeUpModel>?> fetchProduct();
}

class MakeUpService extends INetworkService {
  MakeUpService(super.networkManager);

  @override
  Future<List<MakeUpModel>?> fetchProduct() async {
    final response = await networkManager.send<MakeUpModel, List<MakeUpModel>>(
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline',
        parseModel: MakeUpModel(),
        method: RequestType.GET);

    return response.data;
  }
}

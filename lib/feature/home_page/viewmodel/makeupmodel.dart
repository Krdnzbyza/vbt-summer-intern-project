import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:vbtsummerintern/core/base/baseview_model.dart';
import 'package:vbtsummerintern/feature/home_page/model/makeup_model.dart';

import '../service/makeup_service.dart';
part 'makeupmodel.g.dart';

class MakeUpViewModel = _MakeUpViewModelBase with _$MakeUpViewModel;

abstract class _MakeUpViewModelBase with Store, BaseViewModel {
  late INetworkService networkService;
  @override
  void setContext(BuildContext context) => this.myContext = context;
  @override
  void init() {
    networkService = MakeUpService(networkManager);
    getAllProducts();
  }

  @observable
  bool isLoading = true;

  void changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  List<MakeUpModel>? productList;

  @action
  Future<void> getAllProducts() async {
    changeLoading();
    productList = await networkService.fetchProduct();
    changeLoading();
  }
}

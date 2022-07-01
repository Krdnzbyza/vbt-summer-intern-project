// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeupmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MakeUpViewModel on _MakeUpViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_MakeUpViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$productListAtom =
      Atom(name: '_MakeUpViewModelBase.productList', context: context);

  @override
  List<MakeUpModel>? get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(List<MakeUpModel>? value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  late final _$getAllProductsAsyncAction =
      AsyncAction('_MakeUpViewModelBase.getAllProducts', context: context);

  @override
  Future<void> getAllProducts() {
    return _$getAllProductsAsyncAction.run(() => super.getAllProducts());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
productList: ${productList}
    ''';
  }
}

import 'package:flutter_2_5_bloc_1/data/model/product_model.dart';

class DetailState {
  final ProductModel? productModel;

  DetailState({this.productModel});

  DetailState copyWith({
    ProductModel? productModel,
  }) {
    return DetailState(
      productModel: productModel ?? this.productModel,
    );
  }
}

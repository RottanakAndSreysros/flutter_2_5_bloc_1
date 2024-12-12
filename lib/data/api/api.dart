import 'package:flutter_2_5_bloc_1/data/api/api_respone.dart';

abstract class Api {
  Future<ApiRespone> onGetProduct();
}

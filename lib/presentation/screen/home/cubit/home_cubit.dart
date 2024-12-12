import 'package:bloc/bloc.dart';
import 'package:flutter_2_5_bloc_1/core/injection.dart';
import 'package:flutter_2_5_bloc_1/data/model/product_model.dart';
import 'package:flutter_2_5_bloc_1/data/repo/product_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
  final productRepo = getIt<ProductRepo>();

  Future<void> onGetProduct() async {
    try {
      emit(state.copyWith(loading: true));
      await productRepo.onGetProduct().then(
        (value) {
          value.fold(
            (l) => null,
            (r) {
              emit(state.copyWith(loading: false, listProduct: r.record));
              print(r.record);
            },
          );
        },
      );
      emit(state.copyWith(loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false));
      rethrow;
    }
  }
}

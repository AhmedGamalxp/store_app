import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:store_app/features/home/data/models/product_model/product_model.dart';
import 'package:store_app/features/home/data/repos/home_repo.dart';

part 'all_product_state.dart';

class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit(this.homeRepo) : super(AllProductInitial());
  final HomeRepo homeRepo;
  Future<void> getAllProduct() async {
    emit(AllProductLoading());
    var result = await homeRepo.getAllProduct();
    result.fold((failure) {
      emit(AllProductFailure(failure.erorrMassage));
    }, (products) {
      emit(AllProductSuccess(products));
    });
  }
}

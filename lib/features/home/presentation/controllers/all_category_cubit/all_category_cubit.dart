import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/home/data/models/product_model/category.dart';
import 'package:store_app/features/home/data/repos/home_repo.dart';

part 'all_category_state.dart';

class AllCategoryCubit extends Cubit<AllCategoryState> {
  AllCategoryCubit(this.homeRepo) : super(AllCategoryInitial());
  final HomeRepo homeRepo;
  Future<void> getAllCategories() async {
    emit(AllCategoryLoading());
    var result = await homeRepo.getAllCategory();
    result.fold((failure) {
      emit(AllCategoryFailure(failure.erorrMassage));
    }, (categories) {
      emit(AllCategorySuccess(categories));
    });
  }
}

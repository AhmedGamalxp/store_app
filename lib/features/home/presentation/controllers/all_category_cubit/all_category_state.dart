part of 'all_category_cubit.dart';

@immutable
sealed class AllCategoryState {}

final class AllCategoryInitial extends AllCategoryState {}

final class AllCategoryLoading extends AllCategoryState {}

final class AllCategorySuccess extends AllCategoryState {
  final List<CategoryModel> categories;
  AllCategorySuccess(this.categories);
}

final class AllCategoryFailure extends AllCategoryState {
  final String errMessage;
  AllCategoryFailure(this.errMessage);
}

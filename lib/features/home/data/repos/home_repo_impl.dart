import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_app/core/erorrs/failures.dart';
import 'package:store_app/core/utils/api_services.dart';
import 'package:store_app/features/home/data/models/product_model/category.dart';
import 'package:store_app/features/home/data/models/product_model/product_model.dart';
import 'package:store_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> getAllProduct() async {
    try {
      var data = await apiService.get(endpoint: 'products');
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioErorr(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategory() async {
    try {
      var data = await apiService.get(endpoint: 'categories');
      List<CategoryModel> categories = [];
      for (var item in data) {
        categories.add(CategoryModel.fromJson(item));
      }
      return right(categories);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioErorr(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

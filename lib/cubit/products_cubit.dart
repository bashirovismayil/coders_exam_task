import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exam_task_api/model/products_model.dart';
import 'package:exam_task_api/services/products_services.dart';

class ProductsCubit extends Cubit<List<Products>> {
  ProductsCubit() : super([]);

  Future<void> fetchProducts() async {
    try {
      final List<Products> products = await ProductsServices().fetchProducts();
      emit(products);
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}

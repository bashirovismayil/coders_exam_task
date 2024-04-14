import 'package:dio/dio.dart';
import 'package:exam_task_api/services/endpoints.dart';
import 'package:exam_task_api/model/products_model.dart';

class ProductsServices {
  Future<List<Products>> fetchProducts() async {
    try {
      final response = await Dio().get(Endpoints.baseUrl + Endpoints.products);
      if (response.statusCode == 200) {
        final List<dynamic> decodedData = response.data;
        final List<Products> products =
            decodedData.map((e) => Products.fromJson(e)).toList();
        return products;
      } else {
        throw Exception('Failed to fetch products');
      }
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}

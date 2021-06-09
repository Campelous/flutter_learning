import 'package:dio/dio.dart';
import 'package:dio_example/modules/post/models/post_models.dart';
import 'package:flutter/cupertino.dart';

class HomeRespository {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  Dio _dio = Dio();

  getPosts() async {
    var response = await _dio.get('$baseUrl/posts/1');

    return PostModel.fromJson(response.data);
  }
}

import 'package:dio/dio.dart';

class ApiController {
  Future<List<dynamic>> getData() async {
    final response = await Dio()
        .get('https://api-berita-indonesia.vercel.app/antara/terbaru/');

    final datas = response.data['data']['posts'];

    return datas;
  }
}

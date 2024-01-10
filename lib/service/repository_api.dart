import 'package:dio/dio.dart';
import '../config/app_const.dart';
import '../model/home_model/home_model.dart';

class ApiRepository {
  Future<HomeModel> getHomeData() async {
    try {
      final response = await Dio().get(AppConst.homeEndPinot);
      if (response.statusCode == 200) {
        return HomeModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      print('Error fetching Data: $error');
      rethrow;
    }
  }
}

import 'package:flutter/material.dart';
import '../api/repository_api.dart';
import '../model/home_model/home_model.dart';

class HomeViewModel extends ChangeNotifier {
  HomeModel? homeModel;
  bool isLoading = true;

  Future<void> fetchHomeData() async {
    isLoading = true;
    homeModel = await ApiRepository().getHomeData();
    isLoading = false;
    notifyListeners();
  }
}

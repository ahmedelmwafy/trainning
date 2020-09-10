import 'package:tawla/apiProvider/api_provider.dart';
import 'package:tawla/models/home.dart';

class HomeController {
  HomeModel _homeModel = HomeModel();
  NetWork _netWork = NetWork();

  Future<HomeModel> getHomeData() async {
    var response = await _netWork.getData(url: '/home');
    _homeModel = HomeModel.fromJson(response);
    return _homeModel;
  }
}

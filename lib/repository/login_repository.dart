
import 'package:mvvm_architecture/data/network/network_api_services.dart';
import 'package:mvvm_architecture/resource/app_urls/app_urls.dart';

class LoginRepository{
  final apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) async{
    dynamic response = apiService.postApi(data, AppUrls.loginUrl);
    return response;
  }

}
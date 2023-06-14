import 'package:grand_bazar/Util/ApiUtils/RequestBody/userLoginRequest.dart';
import 'package:grand_bazar/Util/ApiUtils/Responses/loginResponse.dart';
import 'package:grand_bazar/Util/ApiUtils/Responses/postRequestResponse.dart';
import 'package:grand_bazar/Util/ApiUtils/services/userService.dart';

import '../model/UserModel.dart';

class UserController {
  static Future<PostReqResponse> registerUser(User user) async {
    return await PostReqResponse.getResponse(
        await UserService.registerUser(user));
  }

  static Future<LoginResponse> loginUser(UserLoginRequest loginRequest) async {
    return await LoginResponse.getResponse(
        await UserService.loginUser(loginRequest));
  }
}

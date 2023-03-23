import 'package:firebase_auth/firebase_auth.dart';
import 'package:happyeat/login/kakao_login/social_login.dart';
import 'package:happyeat/pages/my_page/my_page.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;

import 'firebase_auth_remote_data_source.dart';

class ViewModel {
  final _firebaseAuthDataSource = FirebaseAuthRemoteDataSource();
  final SocialLogin _socialLogin;
  bool isLogined = false;
  kakao.User? user;


  ViewModel(this._socialLogin);

  Future login() async {
    isLogined = await _socialLogin.login();
    if(isLogined){
      user = await kakao.UserApi.instance.me();


      final customToken = await _firebaseAuthDataSource.createCustomToken({
        'uid' : user!.id.toString(),
        'displayName' : user!.kakaoAccount!.profile!.nickname,
        'email' : user!.kakaoAccount!.email!,
        'photoUrl' : user!.kakaoAccount!.profile!.profileImageUrl!,

      });

      await FirebaseAuth.instance.signInWithCustomToken(customToken);
      print("${customToken}");
    }
  }

  Future logout() async {
    await _socialLogin.logout();
    isLogined = false;
    user = null;
  }
}
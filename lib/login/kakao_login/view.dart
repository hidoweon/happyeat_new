import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happyeat/login/kakao_login/view_model.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as kakao;

import 'kakao_login.dart';

class KakaoView extends StatefulWidget {
  const KakaoView({Key? key}) : super(key: key);

  @override
  State<KakaoView> createState() => _KakaoViewState();
}

class _KakaoViewState extends State<KakaoView> {
  final viewModel = ViewModel(KakaoLogin());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if(!snapshot.hasData){
              return ElevatedButton(
                  onPressed: () async {
                    await viewModel.login();
                    setState(() {});
                  },
                  child: Image.asset("images/kakao_login.png"));
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(viewModel.user?.kakaoAccount?.profile?.profileImageUrl ?? ""),
                Text("${viewModel.isLogined}"),
                ElevatedButton(
                    onPressed: () async {
                      await viewModel.login();
                      setState(() {});
                    },
                    child: Text("Login")),
                ElevatedButton(
                    onPressed: () async{
                      await viewModel.logout();
                      setState(() {});
                    },
                    child: Text("Logout")),
              ],
            );
          },
        ),
      ),
    );
  }
}

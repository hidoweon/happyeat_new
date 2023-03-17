import 'package:http/http.dart' as http;

class FirebaseAuthRemoteDataSource {
  final String url = "https://us-central1-happyeat-d2f8d.cloudfunctions.net/createCustomToken";

  Future<String> createCustomToken(Map<String, dynamic> user) async {
    final customTokenResponse = await http.post(Uri.parse(url), body: user);

    return customTokenResponse.body;
  }
}

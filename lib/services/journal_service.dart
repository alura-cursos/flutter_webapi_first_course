import 'package:http/http.dart' as http;

class JournalService {
  static const String url = "http://192.168.0.11:3000/";
  static const String resource = "learnhttp/";

  String getURL() {
    return "$url$resource";
  }

  //TODO: Substituir getURL por getURI
  void register(String content) {
    http.post(Uri.parse(getURL()), body: {'content': content});
  }

  void get() async {
    http.Response response = await http.get(Uri.parse(getURL()));
    print(response.body);
  }
}

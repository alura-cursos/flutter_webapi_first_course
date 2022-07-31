import 'package:flutter_webapi_first_course/services/http_interceptors.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/http.dart';

class JournalService {
  static const String url = "http://192.168.0.11:3000/";
  static const String resource = "learnhttp/";

  http.Client client = InterceptedClient.build(
    interceptors: [LoggingInterceptor()],
  );

  String getURL() {
    return "$url$resource";
  }

  //TODO: Substituir getURL por getURI
  void register(String content) {
    client.post(Uri.parse(getURL()), body: {'content': content});
  }

  void get() async {
    http.Response response = await client.get(Uri.parse(getURL()));
  }
}

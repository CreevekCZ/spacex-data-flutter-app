import 'package:http/http.dart';
import 'package:palestine_console/palestine_console.dart';

class MainHttpClient extends BaseClient {
  MainHttpClient(this._host, this._client);

  final String _host;
  final Client _client;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    final Uri newUrl = Uri.parse(_host + request.url.path);

    final newRequest = Request(request.method, newUrl);

    if (request is Request) {
      newRequest.headers.addAll(request.headers);
      newRequest.body = request.body;
    }

    Print.green('${newRequest.method} ${newRequest.url}', name: 'REQUEST');
    return _client.send(newRequest);
  }
}

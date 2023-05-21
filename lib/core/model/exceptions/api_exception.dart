import 'package:http/http.dart';

class ApiException implements Exception {
  const ApiException({
    required this.response,
  });

  int get statusCode => response.statusCode;
  final StreamedResponse response;
}

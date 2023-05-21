import 'dart:convert';
import 'package:http/http.dart';
import 'package:spacexplorer/core/helpers/interfaces/identifiable.dart';
import 'package:spacexplorer/core/model/exceptions/api_exception.dart';

abstract class BaseRepository<T extends Identifiable> {
  BaseRepository(
    this.client,
    this.decoder,
  );

  final T Function(dynamic) decoder;

  final Client client;
  Future<List<T>> getAll();
  Future<T?> getById(String indetifier);

  Future<List<T>> resolveListResponse(StreamedResponse response) async {
    final List<T> items = [];

    if (response.statusCode == 200) {
      final rawJson = await response.stream.bytesToString();
      final json = jsonDecode(rawJson);
      items.addAll(List.from(json).map((json) => decoder(json)));
    } else {
      throw ApiException(response: response);
    }

    return items;
  }

  Future<T> resolveSingleResponse(StreamedResponse response) async {
    if (response.statusCode == 200) {
      final rawJson = await response.stream.bytesToString();
      final json = jsonDecode(rawJson);
      return decoder(json);
    } else {
      throw ApiException(response: response);
    }
  }
}

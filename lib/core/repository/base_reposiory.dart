import 'dart:convert';
import 'package:http/http.dart';
import 'package:spacexplorer/core/helpers/interfaces/identifiable.dart';

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

    final rawJson = await response.stream.bytesToString();
    final json = jsonDecode(rawJson);

    if (response.statusCode == 200) {
      items.addAll(List.from(json).map((json) => decoder(json)));
    }

    return items;
  }

  Future<T> resolveSingleResponse(StreamedResponse response) async {
    final rawJson = await response.stream.bytesToString();
    final json = jsonDecode(rawJson);

    if (response.statusCode == 200) {
      return decoder(json);
    } else {
      throw Exception('Failed to load item');
    }
  }
}

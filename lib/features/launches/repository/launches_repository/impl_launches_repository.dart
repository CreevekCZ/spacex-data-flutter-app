import 'dart:async';
import 'package:http/http.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/repository/launches_repository/launches_repository.dart';

class ImplLaunchesRepository extends LaunchesRepository {
  ImplLaunchesRepository(super.client, super.decoder);

  @override
  Future<List<Launch>> getAll() async {
    final request = Request('GET', Uri.parse('/v4/launches'));

    try {
      final response = await client.send(request);

      return resolveListResponse(response);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Launch?> getById(String indetifier) async {
    final request = Request('GET', Uri.parse('/v4/launches/$indetifier'));
    try {
      final response = await client.send(request);

      return resolveSingleResponse(response);
    } catch (_) {
      rethrow;
    }
  }
}

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

      if (response.statusCode == 200) {
        return resolveListResponse(response);
      } else {
        throw Exception('Failed to load launches');
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Launch?> getById(String indetifier) async {
    final request = Request('GET', Uri.parse('/v4/launches/$indetifier'));

    final response = await client.send(request);

    if (response.statusCode == 200) {
      return resolveSingleResponse(response);
    } else {
      throw Exception('Failed to load launch');
    }
  }
}

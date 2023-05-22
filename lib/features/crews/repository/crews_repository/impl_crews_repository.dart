import 'package:http/http.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';
import 'package:spacexplorer/features/crews/repository/crews_repository/crews_repository.dart';

class ImplCrewsRepository extends CrewsRepository {
  ImplCrewsRepository(super.client, super.decoder);

  @override
  Future<List<Crew>> getAll() async {
    final request = Request('GET', Uri.parse('/v4/crew'));

    try {
      final response = await client.send(request);

      return resolveListResponse(response);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Crew?> getById(String indetifier) async {
    final request = Request('GET', Uri.parse('/v4/crew/$indetifier'));

    try {
      final response = await client.send(request);

      return resolveSingleResponse(response);
    } catch (_) {
      rethrow;
    }
  }
}

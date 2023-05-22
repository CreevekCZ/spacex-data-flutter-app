import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';
import 'package:spacexplorer/features/crews/provider/crews_state_notifier_provider.dart';
import 'package:spacexplorer/features/crews/widgets/crew_detail.dart';

class CrewDetailScreen extends StatefulHookConsumerWidget {
  const CrewDetailScreen({
    required this.crewId,
    super.key,
  });

  final String? crewId;

  @override
  ConsumerState<CrewDetailScreen> createState() => _CrewDetailScreenState();
}

class _CrewDetailScreenState extends ConsumerState<CrewDetailScreen> {
  late final CrewsStateNotifier crewsNotifier;
  Crew? crew;

  @override
  void initState() {
    super.initState();

    if (widget.crewId == null) {
      context.pop();
      return;
    }

    crewsNotifier = ref.read(crewsStateNotifierProvider.notifier);

    crew = ref.read(crewsStateNotifierProvider).getCrewById(widget.crewId!);

    if (crew == null) {
      crewsNotifier.getById(widget.crewId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crew detail'),
      ),
      body: buildContent(),
    );
  }

  Widget buildContent() {
    if (crew == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return CrewDetail(crew: crew!);
  }
}

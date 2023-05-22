import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/mixins/image_box_builder_mixin.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';
import 'package:spacexplorer/features/launches/provider/launches_state_notifier_provider.dart';
import 'package:spacexplorer/features/launches/widgets/launch_list_tile.dart';

class CrewDetail extends HookConsumerWidget with ImageBoxBuilderMixin {
  const CrewDetail({
    required this.crew,
    super.key,
  });

  final Crew crew;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        ListTile(
          subtitle: buildPatch(
            context,
            imageUrl: crew.image,
            width: double.infinity,
          ),
        ),
        ListTile(
          title: Text(crew.name),
          subtitle: Text(crew.agency),
        ),
        ListTile(
          title: const Text('Status'),
          subtitle: Text(crew.status),
        ),
        ListTile(
          title: const Text('Wikipedia'),
          subtitle: SelectableText(crew.wikipedia),
        ),
        Text('Launches', style: Theme.of(context).textTheme.headlineSmall),
        ...buildLaunches(ref),
      ],
    );
  }

  List<Widget> buildLaunches(WidgetRef ref) {
    final launches =
        ref.read(launchesStateNotifierProvider).getLaunchesByIds(crew.launches);

    return launches.map((e) => LaunchListTile(launch: e)).toList();
  }
}

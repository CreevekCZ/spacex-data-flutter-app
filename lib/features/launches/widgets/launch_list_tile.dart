import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacexplorer/core/routing/routes.dart';
import 'package:spacexplorer/features/launches/mixins/launch_patch_image_mixin.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';

class LaunchListTile extends StatelessWidget with LaunchPatchImageMixin {
  const LaunchListTile({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.push('${Routes.launchDetail}/${launch.id}'),
      title: Text(
        launch.name,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.calendar_month,
            size: 15,
            color: Colors.white,
          ),
          const SizedBox(width: 5),
          Text(
            launch.formatedDate,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
      leading: buildPatch(context, launch: launch),
      trailing: Text(
        launch.sucessLabel.toUpperCase(),
        textAlign: TextAlign.right,
        style: Theme.of(context).textTheme.labelLarge?.apply(
              color: launch.sucessColor,
            ),
      ),
    );
  }
}

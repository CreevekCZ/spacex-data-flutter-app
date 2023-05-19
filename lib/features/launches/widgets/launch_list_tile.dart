import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacexplorer/core/routing/routes.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';

class LaunchListTile extends StatelessWidget {
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
      leading: launch.smallPatchUrl != null
          ? Hero(
              tag: launch.hashCode,
              child: Image.network(
                launch.smallPatchUrl!,
                fit: BoxFit.fitHeight,
                width: 50,
                height: 50,
              ),
            )
          : const SizedBox(
              width: 50,
              height: 50,
              child: Icon(Icons.hide_image_sharp),
            ),
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

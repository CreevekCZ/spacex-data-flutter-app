import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacexplorer/core/mixins/image_box_builder_mixin.dart';
import 'package:spacexplorer/core/routing/routes.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';

class CrewListTile extends StatelessWidget with ImageBoxBuilderMixin {
  const CrewListTile({
    required this.crew,
    super.key,
  });

  final Crew crew;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.push('${Routes.crewDetail}/${crew.id}'),
      title: Text(
        crew.name,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        crew.agency,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      leading: SizedBox(
        width: 50,
        height: 50,
        child: ClipOval(
          child: Transform.scale(
            scale: 1.3,
            child: buildPatch(
              context,
              imageUrl: crew.image,
            ),
          ),
        ),
      ),
    );
  }
}

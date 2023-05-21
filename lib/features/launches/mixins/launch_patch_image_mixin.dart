import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';

mixin LaunchPatchImageMixin on Widget {
  Widget _buildMissingImage({
    double width = 50,
    bool displayMissingImage = true,
  }) {
    return SizedBox(
      width: displayMissingImage ? width : null,
      child: displayMissingImage ? const Icon(Icons.hide_image_sharp) : null,
    );
  }

  Widget buildPatch(
    BuildContext context, {
    required Launch launch,
    double width = 50,
    bool displayMissingImage = true,
  }) {
    if (launch.smallPatchUrl == null) {
      return _buildMissingImage(
        width: width,
        displayMissingImage: displayMissingImage,
      );
    }

    return Hero(
      tag: launch.hashCode,
      child: CachedNetworkImage(
        imageUrl: launch.smallPatchUrl!,
        fit: BoxFit.fitHeight,
        width: width,
        progressIndicatorBuilder: (context, url, progress) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => _buildMissingImage(
          displayMissingImage: displayMissingImage,
          width: width,
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

mixin ImageBoxBuilderMixin on Widget {
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
    required String? imageUrl,
    double width = 50,
    bool displayMissingImage = true,
  }) {
    if (imageUrl == null) {
      return _buildMissingImage(
        width: width,
        displayMissingImage: displayMissingImage,
      );
    }

    return Hero(
      tag: imageUrl.hashCode,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
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

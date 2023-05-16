import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:spacexplorer/features/launches/model/launch_links/launch_links.dart';

void main() {
  final launchLinkJson = jsonDecode('''
      {
      "patch": {
        "small": "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png",
        "large": "https://images2.imgbox.com/5b/02/QcxHUb5V_o.png"
      },
      "reddit": {
        "campaign": null,
        "launch": null,
        "media": null,
        "recovery": null
      },
      "flickr": {"small": [], "original": []},
      "presskit": null,
      "webcast": "https://www.youtube.com/watch?v=0a_00nJ_Y88",
      "youtube_id": "0a_00nJ_Y88",
      "article":
          "https://www.space.com/2196-spacex-inaugural-falcon-1-rocket-lost-launch.html",
      "wikipedia": "https://en.wikipedia.org/wiki/DemoSat"
    }
    ''');

  test('LaunchLinks fromJson', () {
    final launchLinks = LaunchLinks.fromJson(launchLinkJson);

    expect(launchLinks.patch?.small,
        'https://images2.imgbox.com/94/f2/NN6Ph45r_o.png');
    expect(launchLinks.patch?.large,
        'https://images2.imgbox.com/5b/02/QcxHUb5V_o.png');
    expect('0a_00nJ_Y88', launchLinks.youtubeId);
    expect(
        'https://www.space.com/2196-spacex-inaugural-falcon-1-rocket-lost-launch.html',
        launchLinks.article);
    expect('https://en.wikipedia.org/wiki/DemoSat', launchLinks.wikipedia);
  });
}

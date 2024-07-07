import 'package:dio/dio.dart';
import 'package:media_kit/media_kit.dart';
import 'package:open_url/open_url.dart';

Future<void> main() async {
  MediaKit.ensureInitialized();
  final dio = Dio();
  final player = Player();
  for (var i = 1;; i++) {
    print('${DateTime.now().toString()}: $i');
    try {
      final res = await dio.post<String>('http://www.cfszk.net/info/665');
      if (res.data?.contains(
              '<div class="info-text mt20">\n			\n		</div>\n		<table class="center mt20"><tr><td>\n		</td></tr></table>') ==
          false) {
        print('出成绩了');
        openUrl('http://www.cfszk.net/info/665');
        player.open(Media('./good-luck-comes.flac'));
        player.setPlaylistMode(PlaylistMode.single);
        break;
      }
    } catch (e, stackTrace) {
      print('出错了：\n$e\n$stackTrace');
    }
    await Future.delayed(Duration(seconds: 5));
  }
}

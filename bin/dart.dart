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
      final res = await dio.post<String>('https://zhongkao.gzzk.cn/cx/',
          options: Options(headers: {
            'Referer': 'https://zhongkao.gzzk.cn/kstyrz/kstyrz_check.asp'
          }));
      if (res.data?.contains('请从首页开始访问网站！') == true) throw res.data!;
      if (res.data?.contains('【成绩】录取计分科目[未开]') == false) {
        print('出成绩了');
        openUrl('https://zhongkao.gzzk.cn/cx/');
        player.open(Media('./好运来.flac'));
        player.setPlaylistMode(PlaylistMode.single);
        break;
      }
    } catch (e, stackTrace) {
      print('出错了：\n$e\n$stackTrace');
    }
    await Future.delayed(Duration(seconds: 1));
  }
}

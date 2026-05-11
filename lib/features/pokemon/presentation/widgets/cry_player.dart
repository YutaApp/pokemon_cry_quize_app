// presentation/widgets/cry_player.dart
import 'package:flutter_soloud/flutter_soloud.dart';

class CryPlayer {
  SoundHandle? _handle;

  Future<void> play(String url) async {
    // 前の音を停止
    await stop();

    final source = await SoLoud.instance.loadUrl(url);
    _handle = await SoLoud.instance.play(source);
  }

  Future<void> stop() async {
    if (_handle != null) {
      await SoLoud.instance.stop(_handle!);
      _handle = null;
    }
  }

  void dispose() {
    stop();
  }
}

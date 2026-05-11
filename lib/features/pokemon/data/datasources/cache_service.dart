// lib/services/cache_service.dart
//
// ポケモン名マスタを Hive にキャッシュするサービス。
// 初回起動時に全ポケモンデータを取得・保存し、
// 2回目以降は API リクエストをスキップする。

import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokemon_get/features/pokemon/domain/entities/pokemon_quiz_item.dart';

class CacheService {
  static const _boxName = 'pokemon_master';
  static const _masterKey = 'all_pokemon';
  static const _versionKey = 'cache_version';

  /// キャッシュのバージョン。APIデータ更新時はインクリメントして強制再取得させる。
  static const _currentVersion = 1;

  late Box<String> _box;

  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox<String>(_boxName);
  }

  // ─────────────────────────────────────────────
  // マスタデータ
  // ─────────────────────────────────────────────

  /// キャッシュが有効かどうか
  bool get isCacheValid {
    if (!_box.containsKey(_masterKey)) return false;
    final version = _box.get(_versionKey);
    return version == _currentVersion.toString();
  }

  /// キャッシュから全ポケモンリストを読み込む
  List<PokemonQuizItem>? loadAll() {
    final raw = _box.get(_masterKey);
    if (raw == null) return null;
    try {
      final list = json.decode(raw) as List<dynamic>;
      return list
          .map((e) => PokemonQuizItem.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (_) {
      return null;
    }
  }

  /// 全ポケモンリストをキャッシュに保存
  Future<void> saveAll(List<PokemonQuizItem> items) async {
    final encoded = json.encode(items.map((e) => e.toJson()).toList());
    await _box.put(_masterKey, encoded);
    await _box.put(_versionKey, _currentVersion.toString());
  }

  /// キャッシュを削除 (強制再取得したいとき)
  Future<void> clearAll() async {
    await _box.deleteAll([_masterKey, _versionKey]);
  }
}

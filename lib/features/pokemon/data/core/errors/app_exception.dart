// lib/services/app_exception.dart
//
// アプリ内で使う例外の統一型。
// freezed の union で各エラー種別を表現し、
// 画面側では switch で網羅的にハンドリングできる。

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
abstract class AppException with _$AppException implements Exception {
  const AppException._();

  /// ネットワーク疎通エラー (オフライン等)
  const factory AppException.network(String message) = _Network;

  /// 404 Not Found
  const factory AppException.notFound(String message) = _NotFound;

  /// 429 Rate Limited
  const factory AppException.rateLimited(String message) = _RateLimited;

  /// 5xx Server Error
  const factory AppException.serverError(String message) = _ServerError;

  /// その他
  const factory AppException.unknown(String message) = _Unknown;

  /// ユーザー向けの表示メッセージ
  String get displayMessage => when(
    network: (_) => '通信に失敗しました。インターネット接続を確認してください。',
    notFound: (message) => message,
    rateLimited: (_) => 'しばらく待ってから再度お試しください。',
    serverError: (_) => 'サーバーで問題が発生しました。時間をおいて再試行してください。',
    unknown: (error) => 'エラーが発生しました: $error',
  );

  @override
  String toString() => 'AppException: $displayMessage';
}

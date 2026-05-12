# 🎵 ポケモン鳴き声クイズ

PokeAPI の鳴き声データを使った Flutter 製のクイズアプリです。  
ポケモンの鳴き声を聴いて、4択から正解を選びましょう。

---

## スクリーンショット

> ※ 画像は後で差し替えてください

```
[ホーム画面]   [クイズ画面]   [リザルト画面]
```

---

## 機能

- ポケモンの鳴き声を再生して名前を当てる 4択クイズ
- 出題範囲を世代ごとに選択（第1世代 / 第1〜2世代 / 全世代）
- タイマーあり・なしを切り替え可能
- スピードボーナス・コンボボーナスによるスコア加算
- 正解後に公式アートワークを表示
- ハイスコアをローカルに保存
- ポケモン名マスタをキャッシュし、2回目以降はオフラインで起動可能

---

## 技術スタック

| カテゴリ | ライブラリ |
|---|---|
| 状態管理 | [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) + [riverpod_annotation](https://pub.dev/packages/riverpod_annotation) |
| モデル生成 | [freezed](https://pub.dev/packages/freezed) + [json_serializable](https://pub.dev/packages/json_serializable) |
| HTTP | [dio](https://pub.dev/packages/dio) |
| ローカルキャッシュ | [hive_flutter](https://pub.dev/packages/hive_flutter) |
| 音声再生 | [ flutter_soloud](https://pub.dev/packages/flutter_soloud) |
| 画像キャッシュ | [cached_network_image](https://pub.dev/packages/cached_network_image) |
| データソース | [PokeAPI v2](https://pokeapi.co/) |

---

## アーキテクチャ

Clean Architecture の3層構成を採用しています。

```
lib/
├── core/
│   └── errors/
│       └── app_exception.dart        # freezed union による型安全エラー
│
├── data/                             # 外部データへのアクセス
│   ├── datasources/
│   │   ├── poke_api_service.dart     # HTTP リクエスト・エラー変換
│   │   └── cache_service.dart        # Hive によるローカルキャッシュ
│   ├── models/
│   │   └── api/
│   │       └── pokemon_response.dart # PokeAPI レスポンスの freezed 型
│   └── repositories/
│       └── pokemon_repository_impl.dart
│
├── domain/                           # ビジネスロジック（Flutter 依存なし）
│   ├── entities/
│   │   └── pokemon_quiz_item.dart    # ドメインモデル
│   ├── repositories/
│   │   └── i_pokemon_repository.dart # 抽象インターフェース
│   └── use_cases/
│       └── generate_quiz_use_case.dart
│
├── presentation/                     # UI・状態管理
│   ├── providers/
│   │   ├── providers.dart            # サービス Provider + PokemonMaster
│   │   └── quiz_provider.dart        # QuizNotifier (AsyncNotifier)
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── quiz_screen.dart
│   │   └── result_screen.dart
│   └── widgets/
│       ├── answer_button.dart
│       ├── timer_bar.dart
│       └── pokemon_sprite.dart
│
└── main.dart
```

### データフロー

```
UI (Screen)
  └─▶ QuizNotifier (Riverpod)
        └─▶ GenerateQuizUseCase
              └─▶ IPokemonRepository
                    ├─▶ CacheService  (Hive)     ← キャッシュヒット時
                    └─▶ PokeApiService (HTTP)     ← キャッシュミス時
                          └─▶ pokeapi.co/api/v2/
```

---

## セットアップ

### 動作要件

- Flutter 3.10.0 以上
- Dart 3.0.0 以上

### インストール

```bash
git clone https://github.com/YutaApp/pokemon_cry_quiz.git
cd pokemon_cry_quiz

# 依存パッケージを取得
flutter pub get

# コード生成（freezed / riverpod_generator）
flutter pub run build_runner build --delete-conflicting-outputs
```

### 実行

```bash
flutter run
```

---

## テスト

```bash
# 全テストを実行
flutter test

# カバレッジ付きで実行
flutter test --coverage
```

テストは `PokeApiService`（MockClient による HTTP モック）と `QuizNotifier`（マスタデータのスタブ注入）をカバーしています。

---

## API について

データは [PokéAPI](https://pokeapi.co/) から取得しています。認証不要・無料です。

| エンドポイント | 用途 |
|---|---|
| `GET /pokemon/{id}` | 鳴き声 URL・スプライト・タイプ取得 |
| `GET /pokemon-species/{id}` | 日本語名取得 |
| `GET /pokemon?limit=N` | ポケモン ID リスト取得 |

初回起動時にマスタデータを一括取得して Hive にキャッシュします。  
2回目以降は API リクエストなしで起動します。

---

## ライセンス

MIT License — 詳細は [LICENSE](./LICENSE) を参照してください。

ポケモンの名前・画像・鳴き声の著作権は株式会社ポケモン / 任天堂に帰属します。  
本アプリは非公式のファンプロジェクトであり、商用利用を目的としていません。

---

## 謝辞

- [PokéAPI](https://pokeapi.co/) — 無料で公開されているすばらしい API
- [PokeAPI/cries](https://github.com/PokeAPI/cries) — 鳴き声音声ファイルのホスティング
- [PokeAPI/sprites](https://github.com/PokeAPI/sprites) — 公式アートワーク画像のホスティング

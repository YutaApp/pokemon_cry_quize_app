// presentation/widgets/pokemon_sprite.dart
//
// 正解前: シルエット表示
// 正解後: 公式アートワークをフェードインで表示

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonSprite extends StatelessWidget {
  const PokemonSprite({
    super.key,
    required this.artworkUrl,
    required this.isRevealed,
    this.size = 180,
  });

  final String? artworkUrl;
  final bool isRevealed;
  final double size;

  @override
  Widget build(BuildContext context) {
    final url = artworkUrl;

    if (url == null) {
      return SizedBox.square(
        dimension: size,
        child: Icon(
          Icons.catching_pokemon,
          size: size * 0.6,
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
      );
    }

    return SizedBox.square(
      dimension: size,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: isRevealed
            ? _ArtworkImage(
                key: const ValueKey('revealed'),
                url: url,
                size: size,
              )
            : _Silhouette(
                key: const ValueKey('silhouette'),
                url: url,
                size: size,
              ),
      ),
    );
  }
}

class _ArtworkImage extends StatelessWidget {
  const _ArtworkImage({super.key, required this.url, required this.size});
  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: size,
      height: size,
      fit: BoxFit.contain,
      placeholder: (_, _) => SizedBox.square(
        dimension: size,
        child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
      ),
      errorWidget: (_, _, _) => Icon(
        Icons.catching_pokemon,
        size: size * 0.6,
        color: Theme.of(context).colorScheme.outlineVariant,
      ),
    );
  }
}

class _Silhouette extends StatelessWidget {
  const _Silhouette({super.key, required this.url, required this.size});
  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black87,
        BlendMode.srcIn,
      ),
      child: CachedNetworkImage(
        imageUrl: url,
        width: size,
        height: size,
        fit: BoxFit.contain,
        placeholder: (_, _) => SizedBox.square(dimension: size),
        errorWidget: (_, _, _) => SizedBox.square(dimension: size),
      ),
    );
  }
}

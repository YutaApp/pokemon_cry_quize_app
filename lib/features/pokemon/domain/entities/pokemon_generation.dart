// domain/entities/pokemon_generation.dart ✅

enum PokemonGeneration {
  gen1(limit: 151, offset: 0, label: '第1世代 (初代)'),
  gen1to2(limit: 251, offset: 0, label: '第1〜2世代'),
  all(limit: 1025, offset: 0, label: '全世代');

  const PokemonGeneration({
    required this.limit,
    required this.offset,
    required this.label,
  });

  final int limit;
  final int offset;
  final String label;
}

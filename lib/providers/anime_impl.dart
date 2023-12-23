class AnimeShikimori {
  final int? id;
  final String? name;
  final String? russian;
  final Image? image;
  final String? url;
  final String? kind;
  final String? score;
  final String? status;
  final int? episodes;
  final int? episodesAired;
  final String? airedOn;
  final String? releasedOn;

  AnimeShikimori({
    this.id,
    this.name,
    this.russian,
    this.image,
    this.url,
    this.kind,
    this.score,
    this.status,
    this.episodes,
    this.episodesAired,
    this.airedOn,
    this.releasedOn,
  });

  AnimeShikimori.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        russian = json['russian'] as String?,
        image = (json['image'] as Map<String, dynamic>?) != null
            ? Image.fromJson(json['image'] as Map<String, dynamic>)
            : null,
        url = json['url'] as String?,
        kind = json['kind'] as String?,
        score = json['score'] as String?,
        status = json['status'] as String?,
        episodes = json['episodes'] as int?,
        episodesAired = json['episodes_aired'] as int?,
        airedOn = json['aired_on'] as String?,
        releasedOn = json['released_on'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'russian': russian,
        'image': image?.toJson(),
        'url': url,
        'kind': kind,
        'score': score,
        'status': status,
        'episodes': episodes,
        'episodes_aired': episodesAired,
        'aired_on': airedOn,
        'released_on': releasedOn
      };
}

class Image {
  final String? original;
  final String? preview;
  final String? x96;
  final String? x48;

  Image({
    this.original,
    this.preview,
    this.x96,
    this.x48,
  });

  Image.fromJson(Map<String, dynamic> json)
      : original = json['original'] as String?,
        preview = json['preview'] as String?,
        x96 = json['x96'] as String?,
        x48 = json['x48'] as String?;

  Map<String, dynamic> toJson() =>
      {'original': original, 'preview': preview, 'x96': x96, 'x48': x48};
}

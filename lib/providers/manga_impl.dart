class MangaApiApp {
  final Data? data;

  MangaApiApp({
    this.data,
  });

  MangaApiApp.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as Map<String, dynamic>?) != null
            ? Data.fromJson(json['data'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {'data': data?.toJson()};
}

class Data {
  final int? malId;
  final String? url;
  final Images? images;
  final bool? approved;
  final List<Titles>? titles;
  final String? title;
  final String? titleEnglish;
  final String? titleJapanese;
  final List<dynamic>? titleSynonyms;
  final String? type;
  final int? chapters;
  final int? volumes;
  final String? status;
  final bool? publishing;
  final Published? published;
  final double? score;
  final double? scored;
  final int? scoredBy;
  final int? rank;
  final int? popularity;
  final int? members;
  final int? favorites;
  final String? synopsis;
  final String? background;
  final List<Authors>? authors;
  final List<Serializations>? serializations;
  final List<Genres>? genres;
  final List<dynamic>? explicitGenres;
  final List<Themes>? themes;
  final List<Demographics>? demographics;
  final List<Relations>? relations;
  final List<External>? external;

  Data({
    this.malId,
    this.url,
    this.images,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.chapters,
    this.volumes,
    this.status,
    this.publishing,
    this.published,
    this.score,
    this.scored,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.authors,
    this.serializations,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
    this.relations,
    this.external,
  });

  Data.fromJson(Map<String, dynamic> json)
      : malId = json['mal_id'] as int?,
        url = json['url'] as String?,
        images = (json['images'] as Map<String, dynamic>?) != null
            ? Images.fromJson(json['images'] as Map<String, dynamic>)
            : null,
        approved = json['approved'] as bool?,
        titles = (json['titles'] as List?)
            ?.map((dynamic e) => Titles.fromJson(e as Map<String, dynamic>))
            .toList(),
        title = json['title'] as String?,
        titleEnglish = json['title_english'] as String?,
        titleJapanese = json['title_japanese'] as String?,
        titleSynonyms = json['title_synonyms'] as List?,
        type = json['type'] as String?,
        chapters = json['chapters'] as int?,
        volumes = json['volumes'] as int?,
        status = json['status'] as String?,
        publishing = json['publishing'] as bool?,
        published = (json['published'] as Map<String, dynamic>?) != null
            ? Published.fromJson(json['published'] as Map<String, dynamic>)
            : null,
        score = json['score'] as double?,
        scored = json['scored'] as double?,
        scoredBy = json['scored_by'] as int?,
        rank = json['rank'] as int?,
        popularity = json['popularity'] as int?,
        members = json['members'] as int?,
        favorites = json['favorites'] as int?,
        synopsis = json['synopsis'] as String?,
        background = json['background'] as String?,
        authors = (json['authors'] as List?)
            ?.map((dynamic e) => Authors.fromJson(e as Map<String, dynamic>))
            .toList(),
        serializations = (json['serializations'] as List?)
            ?.map((dynamic e) =>
                Serializations.fromJson(e as Map<String, dynamic>))
            .toList(),
        genres = (json['genres'] as List?)
            ?.map((dynamic e) => Genres.fromJson(e as Map<String, dynamic>))
            .toList(),
        explicitGenres = json['explicit_genres'] as List?,
        themes = (json['themes'] as List?)
            ?.map((dynamic e) => Themes.fromJson(e as Map<String, dynamic>))
            .toList(),
        demographics = (json['demographics'] as List?)
            ?.map(
                (dynamic e) => Demographics.fromJson(e as Map<String, dynamic>))
            .toList(),
        relations = (json['relations'] as List?)
            ?.map((dynamic e) => Relations.fromJson(e as Map<String, dynamic>))
            .toList(),
        external = (json['external'] as List?)
            ?.map((dynamic e) => External.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'mal_id': malId,
        'url': url,
        'images': images?.toJson(),
        'approved': approved,
        'titles': titles?.map((e) => e.toJson()).toList(),
        'title': title,
        'title_english': titleEnglish,
        'title_japanese': titleJapanese,
        'title_synonyms': titleSynonyms,
        'type': type,
        'chapters': chapters,
        'volumes': volumes,
        'status': status,
        'publishing': publishing,
        'published': published?.toJson(),
        'score': score,
        'scored': scored,
        'scored_by': scoredBy,
        'rank': rank,
        'popularity': popularity,
        'members': members,
        'favorites': favorites,
        'synopsis': synopsis,
        'background': background,
        'authors': authors?.map((e) => e.toJson()).toList(),
        'serializations': serializations?.map((e) => e.toJson()).toList(),
        'genres': genres?.map((e) => e.toJson()).toList(),
        'explicit_genres': explicitGenres,
        'themes': themes?.map((e) => e.toJson()).toList(),
        'demographics': demographics?.map((e) => e.toJson()).toList(),
        'relations': relations?.map((e) => e.toJson()).toList(),
        'external': external?.map((e) => e.toJson()).toList()
      };
}

class Images {
  final Jpg? jpg;
  final Webp? webp;

  Images({
    this.jpg,
    this.webp,
  });

  Images.fromJson(Map<String, dynamic> json)
      : jpg = (json['jpg'] as Map<String, dynamic>?) != null
            ? Jpg.fromJson(json['jpg'] as Map<String, dynamic>)
            : null,
        webp = (json['webp'] as Map<String, dynamic>?) != null
            ? Webp.fromJson(json['webp'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() =>
      {'jpg': jpg?.toJson(), 'webp': webp?.toJson()};
}

class Jpg {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? largeImageUrl;

  Jpg({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  Jpg.fromJson(Map<String, dynamic> json)
      : imageUrl = json['image_url'] as String?,
        smallImageUrl = json['small_image_url'] as String?,
        largeImageUrl = json['large_image_url'] as String?;

  Map<String, dynamic> toJson() => {
        'image_url': imageUrl,
        'small_image_url': smallImageUrl,
        'large_image_url': largeImageUrl
      };
}

class Webp {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? largeImageUrl;

  Webp({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  Webp.fromJson(Map<String, dynamic> json)
      : imageUrl = json['image_url'] as String?,
        smallImageUrl = json['small_image_url'] as String?,
        largeImageUrl = json['large_image_url'] as String?;

  Map<String, dynamic> toJson() => {
        'image_url': imageUrl,
        'small_image_url': smallImageUrl,
        'large_image_url': largeImageUrl
      };
}

class Titles {
  final String? type;
  final String? title;

  Titles({
    this.type,
    this.title,
  });

  Titles.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        title = json['title'] as String?;

  Map<String, dynamic> toJson() => {'type': type, 'title': title};
}

class Published {
  final String? from;
  final String? to;
  final Prop? prop;
  final String? string;

  Published({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  Published.fromJson(Map<String, dynamic> json)
      : from = json['from'] as String?,
        to = json['to'] as String?,
        prop = (json['prop'] as Map<String, dynamic>?) != null
            ? Prop.fromJson(json['prop'] as Map<String, dynamic>)
            : null,
        string = json['string'] as String?;

  Map<String, dynamic> toJson() =>
      {'from': from, 'to': to, 'prop': prop?.toJson(), 'string': string};
}

class Prop {
  final From? from;
  final To? to;

  Prop({
    this.from,
    this.to,
  });

  Prop.fromJson(Map<String, dynamic> json)
      : from = (json['from'] as Map<String, dynamic>?) != null
            ? From.fromJson(json['from'] as Map<String, dynamic>)
            : null,
        to = (json['to'] as Map<String, dynamic>?) != null
            ? To.fromJson(json['to'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {'from': from?.toJson(), 'to': to?.toJson()};
}

class From {
  final int? day;
  final int? month;
  final int? year;

  From({
    this.day,
    this.month,
    this.year,
  });

  From.fromJson(Map<String, dynamic> json)
      : day = json['day'] as int?,
        month = json['month'] as int?,
        year = json['year'] as int?;

  Map<String, dynamic> toJson() => {'day': day, 'month': month, 'year': year};
}

class To {
  final int? day;
  final int? month;
  final int? year;

  To({
    this.day,
    this.month,
    this.year,
  });

  To.fromJson(Map<String, dynamic> json)
      : day = json['day'] as int?,
        month = json['month'] as int?,
        year = json['year'] as int?;

  Map<String, dynamic> toJson() => {'day': day, 'month': month, 'year': year};
}

class Authors {
  final int? malId;
  final String? type;
  final String? name;
  final String? url;

  Authors({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Authors.fromJson(Map<String, dynamic> json)
      : malId = json['mal_id'] as int?,
        type = json['type'] as String?,
        name = json['name'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() =>
      {'mal_id': malId, 'type': type, 'name': name, 'url': url};
}

class Serializations {
  final int? malId;
  final String? type;
  final String? name;
  final String? url;

  Serializations({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Serializations.fromJson(Map<String, dynamic> json)
      : malId = json['mal_id'] as int?,
        type = json['type'] as String?,
        name = json['name'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() =>
      {'mal_id': malId, 'type': type, 'name': name, 'url': url};
}

class Genres {
  final int? malId;
  final String? type;
  final String? name;
  final String? url;

  Genres({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Genres.fromJson(Map<String, dynamic> json)
      : malId = json['mal_id'] as int?,
        type = json['type'] as String?,
        name = json['name'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() =>
      {'mal_id': malId, 'type': type, 'name': name, 'url': url};
}

class Themes {
  final int? malId;
  final String? type;
  final String? name;
  final String? url;

  Themes({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Themes.fromJson(Map<String, dynamic> json)
      : malId = json['mal_id'] as int?,
        type = json['type'] as String?,
        name = json['name'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() =>
      {'mal_id': malId, 'type': type, 'name': name, 'url': url};
}

class Demographics {
  final int? malId;
  final String? type;
  final String? name;
  final String? url;

  Demographics({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Demographics.fromJson(Map<String, dynamic> json)
      : malId = json['mal_id'] as int?,
        type = json['type'] as String?,
        name = json['name'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() =>
      {'mal_id': malId, 'type': type, 'name': name, 'url': url};
}

class Relations {
  final String? relation;
  final List<Entry>? entry;

  Relations({
    this.relation,
    this.entry,
  });

  Relations.fromJson(Map<String, dynamic> json)
      : relation = json['relation'] as String?,
        entry = (json['entry'] as List?)
            ?.map((dynamic e) => Entry.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'relation': relation, 'entry': entry?.map((e) => e.toJson()).toList()};
}

class Entry {
  final int? malId;
  final String? type;
  final String? name;
  final String? url;

  Entry({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Entry.fromJson(Map<String, dynamic> json)
      : malId = json['mal_id'] as int?,
        type = json['type'] as String?,
        name = json['name'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() =>
      {'mal_id': malId, 'type': type, 'name': name, 'url': url};
}

class External {
  final String? name;
  final String? url;

  External({
    this.name,
    this.url,
  });

  External.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        url = json['url'] as String?;

  Map<String, dynamic> toJson() => {'name': name, 'url': url};
}

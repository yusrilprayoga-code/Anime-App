import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiSource {
  static const animeApi =
      'https://shikimori.one/api/animes?page=1&limit=20&order=popularity';

  static const image = {
    'original': 'https://shikimori.one/system/animes/original/{id}.{extension}',
    'preview': 'https://shikimori.one/system/animes/original/{id}.{extension}',
    'x96': 'https://shikimori.one/system/animes/x96/{id}.{extension} ',
    'x48': 'https://shikimori.one/system/animes/x48/{id}.{extension}'
  };

  static const imageManga = {
    'original':
        'https://shikimori.one/system/mangas/original/{id}.{extension}?{timestamp}',
    'preview':
        'https://shikimori.one/system/mangas/original/{id}.{extension}?{timestamp}',
    'x96':
        'https://shikimori.one/system/mangas/x96/{id}.{extension}?{timestamp} ',
    'x48':
        'https://shikimori.one/system/mangas/x48/{id}.{extension}?{timestamp}'
  };

  static const mangaApi =
      "https://shikimori.one/api/mangas?page=1&limit=20&order=popularity";

  String getImageById(Map<String, dynamic>? anime, String size) {
    final String? id = anime?['id'].toString();
    final String? extension =
        anime?['image']['original'].toString().split('.').last;
    return image[size]!
        .replaceAll('{id}', id!)
        .replaceAll('{extension}', extension!);
  }

  Future<List<dynamic>> getAnime({int page = 1}) async {
    final response = await http.get(Uri.parse('$animeApi&page=$page'));
    if (response.statusCode == 200) {
      final List<dynamic> animeList = jsonDecode(response.body);
      return animeList;
    } else {
      throw Exception('Failed to load anime');
    }
  }

  Future<List<dynamic>> getManga({int page = 1}) async {
    final response = await http.get(Uri.parse('$mangaApi&page=$page'));
    if (response.statusCode == 200) {
      final List<dynamic> mangaList = jsonDecode(response.body);
      return mangaList;
    } else {
      throw Exception('Failed to load manga');
    }
  }
}

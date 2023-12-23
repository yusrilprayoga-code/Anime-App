import 'package:anime_popular/api/api_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MangaAnime extends StatefulWidget {
  const MangaAnime({super.key});

  @override
  State<MangaAnime> createState() => _MangaAnimeState();
}

class _MangaAnimeState extends State<MangaAnime> {
  late Future<List<dynamic>> mangaApiList;

  @override
  void initState() {
    super.initState();
    mangaApiList = ApiSource().getManga();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Anime'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                FutureBuilder<List<dynamic>>(
                  future: mangaApiList,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          final anime = snapshot.data?[index];
                          return ListTile(
                            onTap: () {},
                            leading: Image.network(
                              ApiSource().getImageById(anime, 'original'),
                              fit: BoxFit.cover,
                            ),
                            title: Text(anime['name']),
                            subtitle: Text(anime['russian']),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text('Error'),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

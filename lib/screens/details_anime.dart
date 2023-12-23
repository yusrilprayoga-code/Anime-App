import 'package:anime_popular/api/api_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsAnime extends StatefulWidget {
  const DetailsAnime({Key? key, required this.anime}) : super(key: key);

  final anime;

  @override
  State<DetailsAnime> createState() => _DetailsAnimeState();
}

class _DetailsAnimeState extends State<DetailsAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.anime.name ?? 'Anime Details'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Center(
                  child: Image.network(
                    ApiSource().getImageById(widget.anime.toJson(), 'original'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildDetailItem('Name', widget.anime.name),
              _buildDetailItem('Russian', widget.anime.russian),
              _buildDetailItem('Kind', widget.anime.kind),
              _buildDetailItem('Score', widget.anime.score),
              _buildDetailItem('Status', widget.anime.status),
              _buildDetailItem('Episodes', widget.anime.episodes?.toString()),
              _buildDetailItem(
                'Episodes Aired',
                widget.anime.episodesAired?.toString(),
              ),
              _buildDetailItem('Aired On', widget.anime.airedOn),
              _buildDetailItem('Released On', widget.anime.releasedOn),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String? value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value ?? 'N/A',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

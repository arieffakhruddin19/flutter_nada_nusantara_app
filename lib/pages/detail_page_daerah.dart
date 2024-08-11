import 'package:flutter/material.dart';
import 'package:flutter_nada_nusantara_app/models/province.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailPage extends StatefulWidget {
  final Province province;
  const DetailPage({
    super.key,
    required this.province,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.province.linkVideo);

    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      );
    } else {
      // Handle the case where videoId is null
      // e.g., show an error or default video
      _controller = YoutubePlayerController(
        initialVideoId: '',
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF167b59),
        title: const Text(
          'Lagu Daerah',
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 2,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        Text(
          widget.province.laguDaerah,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[800] ??
                Colors.blueGrey, // Default ke warna lain jika null
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          '${widget.province.nama} - ${widget.province.ibuKota}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.blueGrey[800] ??
                Colors.blueGrey, // Gunakan warna cadangan jika null
          ),
        ),
        const SizedBox(height: 12),
        Image.network(
          widget.province.photo,
          height: 300,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 12),
        YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressColors: const ProgressBarColors(
              playedColor: Colors.red,
              handleColor: Colors.redAccent,
            ),
          ),
          builder: (context, player) {
            return Column(
              children: [
                player,
                const SizedBox(height: 12),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      width: constraints
                          .maxWidth, // Sesuaikan lebar dengan widget di atasnya
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color(0xFF179067),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Text(
                        widget.province.lirikLaguDaerah,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ]),
    );
  }
}

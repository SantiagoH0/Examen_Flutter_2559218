import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Rutinas extends StatefulWidget {
  const Rutinas({Key? key}) : super(key: key);

  @override
  State<Rutinas> createState() => _RutinasState();
}

class _RutinasState extends State<Rutinas> {
  late VideoPlayerController _videoPlayerController;

  final String desayunoVideoUrl = 'https://www.youtube.com/watch?v=pZjlekeb2uY';
  
  void _showVideo(String videoUrl) {
    if (_videoPlayerController != null) {
      _videoPlayerController.dispose();
    }

    _videoPlayerController = VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        setState(() {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              content: AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _videoPlayerController.pause();
                  },
                  child: const Text('Cerrar'),
                ),
              ],
            ),
          );
          _videoPlayerController.play();
        });
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutinas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Image.network(
                'https://th.bing.com/th/id/OIP.NXsFCUP0IFtnsCUDnR_kQQHaEU?pid=ImgDet&rs=1',
                width: 250,
              ),
            ),
            Card(
              child: InkWell(
                onTap: () => _showVideo(desayunoVideoUrl),
                child: const ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Día 1'),
                  subtitle: Text(
                      'Flexiones de bíceps con mancuernas'),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text('Día 2'),
                subtitle: Text(
                    'Remo con mancuernas'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text('Día 3'),
                subtitle: Text('Press de pecho con mancuernas'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

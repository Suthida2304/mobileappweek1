import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';

class PackageVideo extends StatefulWidget {
  const PackageVideo({Key? key}) : super(key: key);

  @override
  _PackagevideoState createState() => _PackagevideoState();
}

class _PackagevideoState extends State<PackageVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Video'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: BetterPlayer.network(
          "https://cdn.videvo.net/videvo_files/video/free/2018-12/large_watermarked/180607_A_090_preview.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration(autoPlay: true),
        ),
      ),
    );
  }
}

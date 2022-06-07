import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mediabooster/screens/audio_page.dart';
import 'package:mediabooster/screens/staggered_page.dart';
import 'package:mediabooster/screens/video_page.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:video_player/video_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomePage(),
      'staggeredpage': (context) => StaggeredPage(),
      'sliderpage': (context) => SliderPage(),
      'videolistpage': (context) => VideoListPage(),
      'videopage': (context) => VideoPage(),
      'videopage1': (context) => VideoPage1(),
      'videopage2': (context) => VideoPage2(),
      'videopage3': (context) => VideoPage3(),
      'audiopage': (context) => AudioPage(),
      'audioplayscreen': (context) => AudioPlayerScreen(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("staggeredpage");
                },
                child: Text("Staggered View")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('audiopage');
                },
                child: Text("Audio Player")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("videolistpage");
                },
                child: Text("Video Player")),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

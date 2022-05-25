import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';




class VideoListPage extends StatefulWidget {
  const VideoListPage({Key? key}) : super(key: key);

  @override
  State<VideoListPage> createState() => _VideoListPageState();
}

class _VideoListPageState extends State<VideoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height:20),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("videopage");
                },
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQho8dr7c_NadCG7Gc9Z4bLzR1hM_qymdxRcg&usqp=CAU"),
                    )
                  ),
                ),
              ),
              const SizedBox(height:20),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("videopage1");
                },
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:NetworkImage("data:image/jpeg;base64,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"),
                      )
                  ),
                ),
              ),
              const SizedBox(height:20),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("videopage2");
                },
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToJey2FR2kEDYmQSQZFMwo0ia0s34xMvFxZA&usqp=CAU"),
                      )
                  ),
                ),
              ),
              const SizedBox(height:20),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed("videopage3");
                },
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:NetworkImage("data:image/jpeg;base64,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"),
                      )
                  ),
                ),
              ),
              const SizedBox(height:20),
            ],
          ),
        ),
      ),
    );
  }
}
/*
class VideoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VideoPageState();
  }
}

class _VideoPageState extends State<VideoPage> {
  TargetPlatform? _platform;
  late VideoPlayerController _videoPlayerController1;
  late VideoPlayerController _videoPlayerController2;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  List<String> srcs = [
    "https://assets.mixkit.co/videos/preview/mixkit-daytime-city-traffic-aerial-view-56-large.mp4",
    "https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4"
  ];

  Future<void> initializePlayer() async {
    _videoPlayerController1 =
        VideoPlayerController.network(srcs[currPlayIndex]);
    _videoPlayerController2 =
        VideoPlayerController.network(srcs[currPlayIndex]);
    await Future.wait([
      _videoPlayerController1.initialize(),
      _videoPlayerController2.initialize()
    ]);
    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {
    final subtitles = [
      Subtitle(
        index: 0,
        start: Duration.zero,
        end: const Duration(seconds: 10),
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Hello',
              style: TextStyle(color: Colors.red, fontSize: 22),
            ),
            TextSpan(
              text: ' from ',
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            TextSpan(
              text: 'subtitles',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            )
          ],
        ),
      ),
      Subtitle(
        index: 0,
        start: const Duration(seconds: 10),
        end: const Duration(seconds: 20),
        text: 'Whats up? :)',
        // text: const TextSpan(
        //   text: 'Whats up? :)',
        //   style: TextStyle(color: Colors.amber, fontSize: 22, fontStyle: FontStyle.italic),
        // ),
      ),
    ];

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: true,

      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(
            onTap: toggleVideo,
            iconData: Icons.live_tv_sharp,
            title: 'Toggle Video Src',
          ),
        ];
      },
      subtitle: Subtitles(subtitles),
      subtitleBuilder: (context, dynamic subtitle) => Container(
        padding: const EdgeInsets.all(10.0),
        child: subtitle is InlineSpan
            ? RichText(
          text: subtitle,
        )
            : Text(
          subtitle.toString(),
          style: const TextStyle(color: Colors.black),
        ),
      ),

      hideControlsTimer: const Duration(seconds: 1),

      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  int currPlayIndex = 0;

  Future<void> toggleVideo() async {
    await _videoPlayerController1.pause();
    currPlayIndex = currPlayIndex == 0 ? 1 : 0;
    await initializePlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _chewieController != null &&
                  _chewieController!
                      .videoPlayerController.value.isInitialized
                  ? Chewie(
                controller: _chewieController!,
              )
                  : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Loading'),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              _chewieController?.enterFullScreen();
            },
            child: const Text('Fullscreen'),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _videoPlayerController1.pause();
                      _videoPlayerController1.seekTo(Duration.zero);
                      _createChewieController();
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Landscape Video"),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _videoPlayerController2.pause();
                      _videoPlayerController2.seekTo(Duration.zero);
                      _chewieController = _chewieController!.copyWith(
                        videoPlayerController: _videoPlayerController2,
                        autoPlay: true,
                        looping: true,
                        /* subtitle: Subtitles([
                            Subtitle(
                              index: 0,
                              start: Duration.zero,
                              end: const Duration(seconds: 10),
                              text: 'Hello from subtitles',
                            ),
                            Subtitle(
                              index: 0,
                              start: const Duration(seconds: 10),
                              end: const Duration(seconds: 20),
                              text: 'Whats up? :)',
                            ),
                          ]),
                          subtitleBuilder: (context, subtitle) => Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              subtitle,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ), */
                      );
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Portrait Video"),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.android;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Android controls"),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.iOS;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("iOS controls"),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.windows;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Desktop controls"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/


class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController videocontroller;
  late ChewieController chewiecontroller;
  getvideo()async{
    videocontroller = VideoPlayerController.network("https://assets.mixkit.co/videos/preview/mixkit-daytime-city-traffic-aerial-view-56-large.mp4");
    await videocontroller.initialize().then((value){
      setState(() {

      });
    });
     chewiecontroller = ChewieController(
       videoPlayerController: videocontroller,
       autoPlay: true,
       looping: true,
       allowFullScreen: true,
       fullScreenByDefault: true,
       zoomAndPan: true,
     );
     chewiecontroller.isFullScreen;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvideo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: videocontroller.value.isInitialized
            ?AspectRatio(
            aspectRatio: videocontroller.value.aspectRatio,
        child: Chewie(
            controller: chewiecontroller,
        ),
        ):Container(),
      ),
    );
  }
}



class VideoPage1 extends StatefulWidget {
  const VideoPage1({Key? key}) : super(key: key);

  @override
  State<VideoPage1> createState() => _VideoPage1State();
}

class _VideoPage1State extends State<VideoPage1> {
  late VideoPlayerController videocontroller;
late ChewieController chewiecontroller;
getvideo()async{
  videocontroller = VideoPlayerController.asset("assets/videos/dog.mp4");
  await videocontroller.initialize().then((value){
    setState(() {

    });
  });
  chewiecontroller = ChewieController(
    videoPlayerController: videocontroller,
    autoPlay: true,
    looping: true,
    allowFullScreen: true,
    fullScreenByDefault: true,
    zoomAndPan: true,
  );
  chewiecontroller.isFullScreen;
}

@override
void initState() {
  // TODO: implement initState
  super.initState();
  getvideo();
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Video Player"),
      centerTitle: true,
      backgroundColor: Colors.cyan,
    ),
    body: Center(
      child: videocontroller.value.isInitialized
          ?AspectRatio(
        aspectRatio: videocontroller.value.aspectRatio,
        child: Chewie(
          controller: chewiecontroller,
        ),
      ):Container(),
    ),
  );
}
}



class VideoPage2 extends StatefulWidget {
  const VideoPage2({Key? key}) : super(key: key);

  @override
  State<VideoPage2> createState() => _VideoPage2State();
}

class _VideoPage2State extends State<VideoPage2> {
  late VideoPlayerController videocontroller;
  late ChewieController chewiecontroller;
  getvideo()async{
    videocontroller = VideoPlayerController.asset("assets/videos/cat.mp4");
    await videocontroller.initialize().then((value){
      setState(() {

      });
    });
    chewiecontroller = ChewieController(
      videoPlayerController: videocontroller,
      autoPlay: true,
      looping: true,
      allowFullScreen: true,
      fullScreenByDefault: true,
      zoomAndPan: true,
    );
    chewiecontroller.isFullScreen;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvideo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: videocontroller.value.isInitialized
            ?AspectRatio(
          aspectRatio: videocontroller.value.aspectRatio,
          child: Chewie(
            controller: chewiecontroller,
          ),
        ):Container(),
      ),
    );
  }
}



class VideoPage3 extends StatefulWidget {
  const VideoPage3({Key? key}) : super(key: key);

  @override
  State<VideoPage3> createState() => _VideoPage3State();
}

class _VideoPage3State extends State<VideoPage3> {
  late VideoPlayerController videocontroller;
  late ChewieController chewiecontroller;
  getvideo()async{
    videocontroller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4");
    await videocontroller.initialize().then((value){
      setState(() {

      });
    });
    chewiecontroller = ChewieController(
      videoPlayerController: videocontroller,
      autoPlay: true,
      looping: true,
      allowFullScreen: true,
      fullScreenByDefault: true,
      zoomAndPan: true,
    );
    chewiecontroller.isFullScreen;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvideo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: videocontroller.value.isInitialized
            ?AspectRatio(
          aspectRatio: videocontroller.value.aspectRatio,
          child: Chewie(
            controller: chewiecontroller,
          ),
        ):Container(),
      ),
    );
  }
}





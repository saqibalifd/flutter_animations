import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextkitScreen extends StatefulWidget {
  const AnimatedTextkitScreen({super.key});

  @override
  State<AnimatedTextkitScreen> createState() => _AnimatedTextkitScreenState();
}

class _AnimatedTextkitScreenState extends State<AnimatedTextkitScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final title = args['title'] as String;
    final color = args['color'] as Color;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: color,
        title: Text(title),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            _buildWavyAnimation(),
            _buildColorizedAnimation(),
            _rotateAnimationText(),
            _fadeAnimation(),
            _typerAnimation(),
            _typerWriterAnimation(),
            _scaleAnimation(),
            _liquidFillAnimation(),
            _flickerAnimation(),
          ],
        ),
      ),
    );
  }
}

// wave animation
Widget _buildWavyAnimation() => Center(
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText('Wave Animation',
              textStyle: TextStyle(fontSize: 20)),
        ],
        repeatForever: true,
      ),
    );
// color animation
Widget _buildColorizedAnimation() => Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText('Color Animation',
              textStyle: TextStyle(fontSize: 20),
              colors: [
                Colors.pink,
                Colors.blue,
                Colors.orange,
              ])
        ],
        repeatForever: true,
      ),
    );

//Rotate Animation Text

Widget _rotateAnimationText() => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Animated',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          width: 20.0,
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20.0,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('Text 1',
                  textStyle: TextStyle(color: Colors.pink)),
              RotateAnimatedText('Text 2',
                  textStyle: TextStyle(color: Colors.teal)),
              RotateAnimatedText('Text 3',
                  textStyle: TextStyle(color: Colors.deepPurpleAccent)),
            ],
            repeatForever: true,
          ),
        ),
      ],
    );

// Fade Animation Text

Widget _fadeAnimation() => DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          FadeAnimatedText('do IT!', textStyle: TextStyle(color: Colors.pink)),
          FadeAnimatedText('do it RIGHT!!',
              textStyle: TextStyle(color: Colors.deepPurple)),
          FadeAnimatedText('do it RIGHT NOW!!!',
              textStyle: TextStyle(color: Colors.teal)),
        ],
        repeatForever: true,
      ),
    );

//typer animation
Widget _typerAnimation() => DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText('typer animation,'),
          TyperAnimatedText('typer animation one'),
          TyperAnimatedText('typer animation two'),
          TyperAnimatedText('typer animation three'),
        ],
        repeatForever: true,
      ),
    );
//typer animation
Widget _typerWriterAnimation() => DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText('Type writer animation'),
          TypewriterAnimatedText('type writer animtaion two'),
          TypewriterAnimatedText('type writer animation three'),
          TypewriterAnimatedText('type writer animation four'),
        ],
        repeatForever: true,
      ),
    );
//typer animation
Widget _scaleAnimation() => DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          ScaleAnimatedText('Scale Animation one'),
          ScaleAnimatedText('Scale Animation two'),
          ScaleAnimatedText('Scale Animation three'),
        ],
        repeatForever: true,
      ),
    );
//typer animation
Widget _liquidFillAnimation() => SizedBox(
      width: 250.0,
      child: TextLiquidFill(
        text: 'LIQUIDY',
        waveColor: Colors.blueAccent,
        boxBackgroundColor: Colors.redAccent,
        textStyle: TextStyle(
          fontSize: 80.0,
          fontWeight: FontWeight.bold,
        ),
        boxHeight: 220.0,
      ),
    );
Widget _flickerAnimation() => DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        shadows: [
          Shadow(
            blurRadius: 7.0,
            color: Colors.white,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          FlickerAnimatedText('Flicker Animation one'),
          FlickerAnimatedText('Flicker Animation Two'),
          FlickerAnimatedText("Flicker Animtaion Three"),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
/*
1) Import package animated text kit
2) Make a widget for wavy animation on text

*/

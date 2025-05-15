import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  final random = Random();

// assign initial vlaues
  double boxHeight = 60;
  double boxWidth = 60;
  Color boxColor = Colors.purple;
  double boxRadious = 20;

// make functions to change design of container
  void _changeBoxSize() {
    setState(() {
      boxHeight = random.nextInt(200).toDouble() + 50;
      boxWidth = random.nextInt(200).toDouble() + 50;
    });
  }

  void _changeBoxRadious() {
    setState(() {
      boxRadious = random.nextInt(50).toDouble();
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        0.8,
      );
    });
  }

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
      body: Center(
        child: AnimatedContainer(
          // design of animated container
          height: boxHeight,
          width: boxWidth,
          curve: Curves.fastOutSlowIn,
          duration: const Duration(seconds: 1),
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(boxRadious),
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // change design of container with buttons
          FloatingActionButton(
            backgroundColor: Colors.white,
            heroTag: 'size',
            onPressed: _changeBoxSize,
            child: const Icon(Icons.aspect_ratio),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.white,
            heroTag: 'color',
            onPressed: _changeBoxColor,
            child: const Icon(Icons.color_lens),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.white,
            heroTag: 'radius',
            onPressed: _changeBoxRadious,
            child: const Icon(Icons.blur_on),
          ),
        ],
      ),
    );
  }
}



/*
1) Create veriables and assign the initial size and colors of container 
2) Make Animated Container 
3) Add Properties to this container
4) Make Fuctions Which change the design of container 
5) Make Buttons which execute the functions on tap
*/
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations/routes/route_names.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  Color _rendomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(129),
      random.nextInt(129),
      random.nextInt(129),
    );
  }

  final List data = [
    {
      'title': 'Animated Container',
      'screen': RouteNames.animatedContainer,
    },
    {
      'title': 'Animated Text Kit',
      'screen': RouteNames.animatedTextKitScreen,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Home Screen'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        body: GridView.builder(
          itemCount: data.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, data[index]['screen'],
                  arguments: {
                    'title': data[index]['title'],
                    'color': _rendomColor(),
                  }),
              child: Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: _rendomColor(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      spacing: 10,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: _rendomColor(),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          data[index]['title'],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}

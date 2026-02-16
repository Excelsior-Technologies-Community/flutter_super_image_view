import 'package:flutter/material.dart';
import 'package:flutter_super_image_view/super_image_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Image View Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Super Image View Example"),
        centerTitle: true,
      ),

      body: Center(
        child: GestureDetector(
          onTap: () {
            SuperImageView.show(
              context,
              imageUrl: "https://picsum.photos/800/1200",
              caption: "Hello 👋 This image is opened using super_image_view library",
            );
          },
          child: Hero(
            tag: "demo_image",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(
                "https://picsum.photos/300/400",
                width: 230,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

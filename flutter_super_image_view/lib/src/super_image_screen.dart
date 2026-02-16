import 'package:flutter/material.dart';
import 'super_image_widget.dart';

class SuperImageView {
  static void show(
      BuildContext context, {
        required String imageUrl,
        String? heroTag,
        String? caption,
      }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (_, __, ___) => _SuperImageScreen(
          imageUrl: imageUrl,
          heroTag: heroTag,
          caption: caption,
        ),
      ),
    );
  }
}

class _SuperImageScreen extends StatefulWidget {
  final String imageUrl;
  final String? heroTag;
  final String? caption;

  const _SuperImageScreen({
    required this.imageUrl,
    this.heroTag,
    this.caption,
  });

  @override
  State<_SuperImageScreen> createState() => _SuperImageScreenState();
}

class _SuperImageScreenState extends State<_SuperImageScreen> {
  double drag = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (d) {
        setState(() => drag += d.delta.dy);
      },
      onVerticalDragEnd: (_) {
        if (drag.abs() > 150) Navigator.pop(context);
        setState(() => drag = 0);
      },
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.95),
        body: Stack(
          children: [
            Center(
              child: Hero(
                tag: widget.heroTag ?? widget.imageUrl,
                child: SuperImageWidget(imageUrl: widget.imageUrl),
              ),
            ),

            // Close button
            Positioned(
              top: 40,
              left: 15,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),

            // Caption
            if (widget.caption != null)
              Positioned(
                bottom: 40,
                left: 20,
                right: 20,
                child: Text(
                  widget.caption!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'gesture_controller.dart';
import 'image_provider_builder.dart';
import 'loading_view.dart';

class SuperImageWidget extends StatefulWidget {
  final String? imageUrl;
  final String? asset;
  final Uint8List? bytes;

  const SuperImageWidget({
    super.key,
    this.imageUrl,
    this.asset,
    this.bytes,
  });

  @override
  State<SuperImageWidget> createState() => _SuperImageWidgetState();
}

class _SuperImageWidgetState extends State<SuperImageWidget> {
  final SuperImageGestureController _gesture = SuperImageGestureController();

  @override
  Widget build(BuildContext context) {
    final provider = SuperImageProvider.build(
      widget.imageUrl,
      asset: widget.asset,
      bytes: widget.bytes,
    );

    return GestureDetector(
      onDoubleTapDown: (details) {
        _gesture.doubleTapZoom(details.localPosition);
      },
      child: InteractiveViewer(
        transformationController: _gesture.controller,
        minScale: 1,
        maxScale: 4,
        child: Image(
          image: provider,
          loadingBuilder: (c, child, progress) {
            if (progress == null) return child;
            return const SuperImageLoading();
          },
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

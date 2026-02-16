import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class SuperImageProvider {
  static ImageProvider build(
      String? url, {
        Uint8List? bytes,
        File? file,
        String? asset,
      }) {
    if (bytes != null) return MemoryImage(bytes);
    if (file != null) return FileImage(file);
    if (asset != null) return AssetImage(asset);
    return NetworkImage(url!);
  }
}

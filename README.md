## 🖼️ Super Image View

Super Image View is a powerful fullscreen image viewer for Flutter that provides zoom, pan, double-tap zoom, hero animation, and swipe-to-dismiss just like WhatsApp, Telegram, and Instagram media viewers.

It helps you avoid writing complex gesture logic and quickly add a professional photo viewer inside any Flutter application.

-----------------------------

## ✨ Feature Preview

- 🔍 Pinch to zoom
-👆 Double tap zoom
- 🧭 Pan & drag image
- 🎞 Hero animation support
- 🌙 Dark fullscreen background
- ⬇ Swipe down to close
- ❌ Close button overlay
- 📝 Optional caption text
- 🌐 Network image support
- 🖼 Asset image support
- 💾 Memory image support (Uint8List)
- ⚡ Smooth animations
- 📦 No external dependencies (Pure Flutter)

  -----------------------------

  ## 🎥 Preview

https://github.com/user-attachments/assets/bb16eb23-c41c-46e3-8820-9568761454a9


-------------------------------

## 📦 Installation

Add this to your pubspec.yaml:
```
dependencies:
  super_image_view:
    git:
      url: https://github.com/Excelsior-Technologies-Community/flutter_super_image_view/tree/stage
```
then run:
```
flutter pub get
```

-----------------------------

## 📁 File Structure
```
super_image_view/
│
├─ lib/
│   ├─ super_image_view.dart        # Main export library file
│   ├─ main.dart                    # Internal test entry (optional)
│   │
│   └─ src/
│       ├─ super_image_screen.dart      # Fullscreen viewer UI
│       ├─ super_image_widget.dart      # Zoomable image widget
│       ├─ gesture_controller.dart      # Double tap & zoom controller
│       ├─ image_provider_builder.dart  # Builds Network/Asset/Memory images
│       └─ loading_view.dart            # Loading indicator
│
│               
│
├─ pubspec.yaml
├─ README.md
└─ LICENSE

```

-------------------------------

## 🚀 Usage

Import the package:
```
import 'package:super_image_view/super_image_view.dart';
```
Open the viewer when an image is tapped:
```
GestureDetector(
  onTap: () {
    SuperImageView.show(
      context,
      imageUrl: "https://picsum.photos/800/1200",
      caption: "Beautiful Image",
    );
  },
  child: Hero(
    tag: "demo",
    child: Image.network(
      "https://picsum.photos/300/400",
      width: 200,
    ),
  ),
)
```

--------------------------------

## 🧩 SuperImageView Parameters

| Parameter  | Type         | Required | Description                     |
| ---------- | ------------ | -------- | ------------------------------- |
| `context`  | BuildContext | Yes      | Required context to open viewer |
| `imageUrl` | String       | Yes      | Image URL to display            |
| `heroTag`  | String?      | No       | Hero animation tag              |
| `caption`  | String?      | No       | Text shown at bottom            |

----------------------------------

## 📝 MIT License
```
Copyright (c) 2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Super Image View library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```













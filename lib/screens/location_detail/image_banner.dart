import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  // customising the path to the asset
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assetPath,
        // the way we want the image to behave depending on the screen size
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';

// widget for defining a text section
class TextSection extends StatelessWidget {
  // this shouldn't be accessed outside this widget
  // the use of underscore means it would be private
  // how to define a private member
  final String _title;
  final String _body;

  TextSection(this._title, this._body); // this are positional parametres

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(_title),
        Text(_body),
      ]
    );
  }
}

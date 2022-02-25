import 'package:flutter/material.dart';

// widget for defining a text section
class TextSection extends StatelessWidget {
  // this shouldn't be accessed outside this widget
  // the use of underscore means it would be private
  // how to define a private member
  final String _title;
  final String _body;
  // define a static constant for the padding
  static const double _hPad = 16.0;

  TextSection(this._title, this._body); // this are positional parametres

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32, _hPad, 4),
            child: Text(_title, style: Theme.of(context).textTheme.titleMedium),
            ),
            Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 10, _hPad, _hPad),
            child: Text(_body, style: Theme.of(context).textTheme.bodyText1),
            ),
            
          
        ]);
  }
}

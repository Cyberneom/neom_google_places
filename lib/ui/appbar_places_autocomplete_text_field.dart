
import 'package:flutter/material.dart';

import 'places_autocomplete_widget.dart';

class AppBarPlacesAutoCompleteTextField extends StatefulWidget {
  final InputDecoration? textDecoration;
  final TextStyle? textStyle;

  const AppBarPlacesAutoCompleteTextField({
    super.key,
    this.textDecoration,
    this.textStyle,
  });

  @override
  AppBarPlacesAutoCompleteTextFieldState createState() =>
      AppBarPlacesAutoCompleteTextFieldState();
}

class AppBarPlacesAutoCompleteTextFieldState
    extends State<AppBarPlacesAutoCompleteTextField> {
  @override
  Widget build(BuildContext context) {
    final state = PlacesAutocompleteWidget.of(context)!;

    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 4.0),
      child: TextField(
        controller: state.queryTextController,
        autofocus: true,
        style: widget.textStyle ?? _defaultStyle(),
        decoration:
        widget.textDecoration ?? _defaultDecoration(state.widget.hint),
      ),
    );
  }

  InputDecoration _defaultDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Theme.of(context).brightness == Brightness.light
          ? Colors.white30
          : Colors.black38,
      hintStyle: TextStyle(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.black38
            : Colors.white30,
        fontSize: 16.0,
      ),
      border: InputBorder.none,
    );
  }

  TextStyle _defaultStyle() {
    return TextStyle(
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black.withValues(alpha: 0.9)
          : Colors.white.withValues(alpha: 0.9),
      fontSize: 16.0,
    );
  }
}

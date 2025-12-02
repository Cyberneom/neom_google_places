
import 'package:flutter/material.dart';
import 'package:neom_maps_services/domain/models/prediction.dart';

import 'places_autocomplete_widget.dart';
import 'powered_by_google_image.dart';
import 'widgets/prediction_list_view.dart';
import 'widgets/progress_loader.dart';

class PlacesAutocompleteResult extends StatefulWidget {
  final ValueChanged<Prediction>? onTap;
  final Widget? logo;
  final TextStyle? resultTextStyle;

  const PlacesAutocompleteResult({
    super.key,
    this.onTap,
    this.logo,
    this.resultTextStyle,
  });

  @override
  PlacesAutocompleteResultState createState() =>
      PlacesAutocompleteResultState();
}

class PlacesAutocompleteResultState extends State<PlacesAutocompleteResult> {
  @override
  Widget build(BuildContext context) {
    final state = PlacesAutocompleteWidget.of(context)!;

    if (state.queryTextController!.text.isEmpty ||
        state.response == null ||
        state.response!.predictions.isEmpty) {
      final children = <Widget>[];
      if (state.searching) {
        children.add(const ProgressLoader());
      }
      children.add(widget.logo ?? const PoweredByGoogleImage());
      return Stack(children: children);
    }
    return PredictionsListView(
      predictions: state.response!.predictions,
      onTap: widget.onTap,
      resultTextStyle: widget.resultTextStyle,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:neom_maps_services/domain/models/prediction.dart';

import 'prediction_tile.dart';

class PredictionsListView extends StatelessWidget {
  final List<Prediction> predictions;
  final ValueChanged<Prediction>? onTap;
  final TextStyle? resultTextStyle;

  const PredictionsListView({
    super.key,
    required this.predictions,
    this.onTap,
    this.resultTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: predictions
          .map(
            (Prediction p) => PredictionTile(
          prediction: p,
          onTap: onTap,
          resultTextStyle: resultTextStyle,
        ),
      )
          .toList(),
    );
  }

}

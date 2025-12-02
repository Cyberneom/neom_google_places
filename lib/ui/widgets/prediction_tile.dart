
import 'package:flutter/material.dart';
import 'package:neom_maps_services/domain/models/prediction.dart';

class PredictionTile extends StatelessWidget {
  final Prediction prediction;
  final ValueChanged<Prediction>? onTap;
  final TextStyle? resultTextStyle;

  const PredictionTile({
    super.key,
    required this.prediction,
    this.onTap,
    this.resultTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.location_on),
      title: Text(
        prediction.text?.text ?? '',
        style: resultTextStyle ?? Theme.of(context).textTheme.bodyMedium,
      ),
      onTap: () {
        onTap?.call(prediction);
      },
    );
  }
}


import 'package:flutter/material.dart';

class ProgressLoader extends StatelessWidget {

  const ProgressLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 2.0),
      child: const LinearProgressIndicator(),
    );
  }
}

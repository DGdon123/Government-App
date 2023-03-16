import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LanguageSeries {
  final String year;
  final int subscribers;
  final charts.Color barColor;

  LanguageSeries({
    required this.year,
    required this.subscribers,
    required this.barColor,
  });
}

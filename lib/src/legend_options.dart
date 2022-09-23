import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class LegendOptions {
  final bool showLegends;
  final bool showLegendsInRow;
  final TextStyle legendTextStyle;
  final TextStyle legendSubtitleStyle;
  final BoxShape legendShape;
  final LegendPosition legendPosition;
  final Map<String,String> legendLabels;

  const LegendOptions({
    this.showLegends = true,
    this.showLegendsInRow = false,
    this.legendTextStyle = defaultLegendStyle,
    this.legendSubtitleStyle = defaultLegendSubtitleStyle,
    this.legendShape = BoxShape.circle,
    this.legendPosition = LegendPosition.right,
    this.legendLabels = const {},
  });
}

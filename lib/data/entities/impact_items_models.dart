import 'package:flutter/material.dart';

class ImpactItemsModels {
  final Color circleColor;
  final IconData icon;
  final String title;
  final String type;
  final String percentage;
  final bool percentageStatus;

  const ImpactItemsModels({
    required this.circleColor,
    required this.icon,
    required this.title,
    required this.type,
    required this.percentage,
    required this.percentageStatus,
  });

  static List<ImpactItemsModels> fetchImpactItems() {
    return [
      ImpactItemsModels(
        circleColor: Colors.lightBlue[100]!,
        icon: Icons.monetization_on,
        title: "\$10.5",
        type: "Saved",
        percentage: "15%",
        percentageStatus: false,
      ),
      ImpactItemsModels(
        circleColor: Colors.tealAccent[700]!,
        icon: Icons.forest_outlined,
        title: "0.5",
        type: "Trees",
        percentage: "15%",
        percentageStatus: false,
      ),
      ImpactItemsModels(
        circleColor: Colors.yellow[700]!,
        icon: Icons.sports_gymnastics,
        title: "400 Cal",
        type: "Calories",
        percentage: "15%",
        percentageStatus: true,
      ),
    ];
  }
}

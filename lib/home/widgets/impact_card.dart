import 'package:cloud_tree_test/data/entities/impact_items_models.dart';
import 'package:cloud_tree_test/home/widgets/impact_item.dart';
import 'package:flutter/material.dart';

class ImpactCard extends StatelessWidget {
  const ImpactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      // height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(blurRadius: 2, color: Colors.black.withOpacity(.2)),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Impact",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Quantified impact of your trips",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: ImpactItemsModels.fetchImpactItems().map((e) {
                return ImpactItem(
                  circleColor: e.circleColor,
                  icon: e.icon,
                  title: e.title,
                  type: e.type,
                  percentage: e.percentage,
                  percentageStatus: e.percentageStatus,
                );
              }).toList()),
        ],
      ),
    );
  }
}

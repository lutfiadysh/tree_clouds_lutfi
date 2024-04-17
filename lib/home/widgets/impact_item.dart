import 'package:flutter/material.dart';

class ImpactItem extends StatelessWidget {
  final Color? circleColor;
  final IconData? icon;
  final String? title;
  final String? type;
  final String? percentage;
  final bool? percentageStatus;
  const ImpactItem({
    super.key,
    this.circleColor,
    this.icon,
    this.title,
    this.type,
    this.percentage,
    this.percentageStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor ?? Colors.blue[700],
          ),
          child: Icon(
            icon ?? Icons.monetization_on,
            color: Colors.white,
          ),
        ),
        Text(
          title ?? "\$10.5",
          style: TextStyle(
            fontSize: 13,
            color: Colors.black87,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2.5),
          child: Text(
            type ?? "Saved",
            style: TextStyle(
              fontSize: 10,
              color: Colors.black45,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: percentageStatus!
                ? Colors.green.withOpacity(.05)
                : Colors.red.withOpacity(.05),
          ),
          child: Row(
            children: [
              Icon(
                percentageStatus! ? Icons.arrow_upward : Icons.arrow_downward,
                color: percentageStatus! ? Colors.green[800] : Colors.red[900],
                size: 12,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                percentage ?? "15%",
                style: TextStyle(
                  color:
                      percentageStatus! ? Colors.green[800] : Colors.red[900],
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PercentageIndicator extends StatelessWidget {
  final double percentage;

  const PercentageIndicator({
    Key? key,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isNegative = percentage < 0;
    final Color color = isNegative ? Colors.red : Colors.green;
    final IconData icon = isNegative
        ? FontAwesomeIcons.arrowTrendDown
        : FontAwesomeIcons.arrowTrendUp;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: color,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(
            isNegative
                ? ' ${percentage.toStringAsFixed(0)}%'
                : ' +${percentage.toStringAsFixed(0)}%',
            style: TextStyle(
              fontSize: 12.h,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

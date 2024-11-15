import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyerTile extends StatelessWidget {
  final String id;
  final String date;

  BuyerTile({
    required this.date,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '#$id',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
                fontSize: 18,
              ),
            ),
            Text(
              date,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Divider(
          color: Colors.grey.shade300,
        ),
      ],
    );
  }
}

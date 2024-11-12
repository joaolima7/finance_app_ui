import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String day;
  final String value;

  TransactionTile({
    required this.day,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            day,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple[300],
              fontSize: 15,
            ),
          ),
          Text(
            'R\$ $value',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.deepPurple[400],
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

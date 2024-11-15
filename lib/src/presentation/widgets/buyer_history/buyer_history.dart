import 'package:finance_app/src/presentation/components/buyer_tile.dart';
import 'package:flutter/material.dart';

class BuyerHistory extends StatelessWidget {
  const BuyerHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const Text(
            'Histórico de Compras',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ID',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
              ),
              Text(
                'Data',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
              ),
            ],
          ),
          BuyerTile(date: '10/03/2024', id: '1792'),
          BuyerTile(date: '14/03/2024', id: '1793'),
          BuyerTile(date: '05/04/2024', id: '1794'),
        ],
      ),
    );
  }
}

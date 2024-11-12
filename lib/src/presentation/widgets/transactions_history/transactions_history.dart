import 'package:finance_app/src/presentation/components/transaction_tile.dart';
import 'package:flutter/material.dart';

class TransactionsHistory extends StatelessWidget {
  const TransactionsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: <Widget>[
            const Text(
              'Histórico de transações',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            const SizedBox(height: 15),
            TransactionTile(day: 'Ontem', value: '-540,32'),
            const SizedBox(height: 15),
            TransactionTile(day: 'Quinta-Feira', value: '-273,90'),
            const SizedBox(height: 15),
            TransactionTile(day: 'Segunda-Feira', value: '-1348,10'),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

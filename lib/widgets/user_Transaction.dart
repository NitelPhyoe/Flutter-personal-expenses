import 'package:flutter/material.dart';
import './new_Transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Watches',
      amount: 199.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shirt',
      amount: 99.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String nxTitle, double nxAmount) {
    final nxTrans = new Transaction(
      title: nxTitle,
      amount: nxAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(nxTrans);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

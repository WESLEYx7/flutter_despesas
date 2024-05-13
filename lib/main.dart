import 'package:flutter/material.dart';
import 'package:flutter_app_test/models/transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Transaction> _transactions = [
      Transaction(
        id: 't1', 
        title: 'Novo Tênis de Corrida', 
        value: 310.76, 
        date: DateTime.now()
      ),
      Transaction(
        id: 't2', 
        title: 'Ps4', 
        value: 1500.00, 
        date: DateTime.now()
      ),
      Transaction(
        id: '1', 
        title: 'Notebook 4GB Windows 10', 
        value: 2100.00, 
        date: DateTime.now()
      ),
      Transaction(
        id: '2', 
        title: 'TV 55 Samsung', 
        value: 2999.00, 
        date: DateTime.now()
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Minhas Despesas'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                child: const Text('Gráfico'),
                color: Colors.blue,
              ),
            ),
            Column(
              children: _transactions.map((tr) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          tr.value.toString()
                        ),
                      ),
                      Column(
                        children: <Widget> [
                          Text(tr.title),
                          Text(tr.date.toString())
                        ]
                      )
                    ],
                  )
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

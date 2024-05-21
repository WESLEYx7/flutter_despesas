import 'package:flutter/material.dart';
import 'package:flutter_app_test/models/transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
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
            const Card(
              color: Colors.blue,
              child: Text('Gráfico'),
            ),
            Column(
              children: transactions.map((tr) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 2,
                          )
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          tr.value.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text(
                            tr.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 15,
                              color: Colors.pink
                              ),
                            ),
                          Text(
                            tr.date.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.grey[700],
                            ),
                          ),
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
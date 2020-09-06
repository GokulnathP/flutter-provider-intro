import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './count.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome to flutter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text(
              'Press the below buttons change count',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Consumer<Count>(
              builder: (context, count, child) => Text(
                'Count: ${count.count}',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: Provider.of<Count>(context, listen: false).increment,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: Provider.of<Count>(context, listen: false).decrement,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

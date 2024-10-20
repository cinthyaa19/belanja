import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(name: 'Sugar', price:5000),
      Item(name: 'Salt', price: 2000),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container( 
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final Item item = items[index];
            return InkWell(
              onTap:() {
                Navigator.pushNamed(context, '/item');
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                    child: Row(
                      children:[
                        Expanded(child: Text(item.name)),
                        Expanded(child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        )
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
  }
}
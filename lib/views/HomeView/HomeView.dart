import 'package:flutter/material.dart';
import 'package:todoo/views/HomeView/widgets/ProductCard.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        titleTextStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        title: const Text('Home View'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < 9; i++)
                ProductCard(
                    productName: "productName $i",
                    productDescription: "productDescription $i")
            ],
          ),
        ),
      ),
    );
  }
}

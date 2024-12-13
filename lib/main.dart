import 'package:flutter/material.dart';
import 'penjual_home.dart';
import 'add_product.dart';
import 'product_detail.dart';

void main() {
  runApp(PenjualApp());
}

class PenjualApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penjual',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PenjualHomePage(),
      onGenerateRoute: (settings) {
        if (settings.name == '/productDetail') {
          final args = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
            builder: (context) {
              return ProductDetailScreen(
                jenisIkan: args['jenisIkan']!,
                deskripsi: args['deskripsi']!,
                harga: args['harga']!,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      routes: {
        '/penjualHome': (context) => PenjualHomePage(),
        '/addProduct': (context) => AddProductScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Icon(Icons.image, size: 100, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            Text('Ikan Nila', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Rp 50.000/kg', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text('Ambil di Tempat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Tersedia', style: TextStyle(fontSize: 16, color: Colors.green)),
            SizedBox(height: 20),
            Text('Pengantaran', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Tersedia', style: TextStyle(fontSize: 16, color: Colors.green)),
            SizedBox(height: 20),
            Text('Deskripsi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Ikan Nila segar yang kaya akan gizi dengan daging yang lembut dan lezat. Dipanen langsung dari tambak untuk memastikan kesegaran terbaik.', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

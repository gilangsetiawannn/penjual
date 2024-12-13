import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  int _currentIndex = 2;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/penjualHome'); // Navigasi ke halaman PenjualHomePage
    } else if (index == 2) {
      // Tetap di halaman AddProduct
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Produk', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/penjualHome'); // Kembali ke halaman home
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add_a_photo),
                label: Text('Tambah Foto'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Jenis Ikan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Jenis Ikan',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              ),
            ),
            SizedBox(height: 20),
            Text('Deskripsi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Deskripsi',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              ),
            ),
            SizedBox(height: 20),
            Text('Harga', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              decoration: InputDecoration(
                hintText: 'Rp.0',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              ),
              keyboardType: TextInputType.number,
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/productDetail');
                },
                child: Text('Selesai'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Tambah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
      ),
    );
  }
}

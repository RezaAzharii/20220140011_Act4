import 'package:flutter/material.dart';

class DetailOrderPage extends StatelessWidget {
  final String makanan;
  final String minuman;
  final int jumlahMakanan;
  final int jumlahMinuman;
  final int totalHarga;
  const DetailOrderPage({
    super.key,
    required this.makanan,
    required this.minuman,
    required this.jumlahMakanan,
    required this.jumlahMinuman,
    required this.totalHarga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Order Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Food Order: $makanan'),
                Text('x$jumlahMakanan'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Drink Order: $minuman'),
                Text('x$jumlahMinuman'),
              ],
            ),
            Text('Total Price: $totalHarga'),
        
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Finish Order'),
            ),
          ],
        ),
      ),
    );
  }
}
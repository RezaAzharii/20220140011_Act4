import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final TextEditingController makananController = TextEditingController();
  final TextEditingController minumanController = TextEditingController();
  int jumlahMakanan = 0;
  int jumlahMinuman = 0;
  int totalHarga = 0;
  final _formKey = GlobalKey<FormState>();

  void calculateTotalPrice() {
    setState(() {
      totalHarga = (jumlahMakanan * 32000) + (jumlahMinuman * 5000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Page')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 350,
            padding: EdgeInsets.all(14.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color.fromARGB(255, 127, 126, 121),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 16,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            controller: makananController,
                            decoration: const InputDecoration(
                              labelText: 'Food',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Food order';
                              }
                              return null;
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (jumlahMakanan > 0) jumlahMakanan--;
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text('$jumlahMakanan', style: TextStyle(fontSize: 16)),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              jumlahMakanan++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            controller: minumanController,
                            decoration: const InputDecoration(
                              labelText: 'Drink',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Drink order';
                              }
                              return null;
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (jumlahMinuman > 0) jumlahMinuman--;
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text('$jumlahMinuman', style: TextStyle(fontSize: 16)),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              jumlahMinuman++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: Text('Order Food'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
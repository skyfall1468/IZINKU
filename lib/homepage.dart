import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  TextEditingController inputNIS = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MASUK IZIN'),
        backgroundColor: const Color(0xFFFFFFFF),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color:  Colors.redAccent),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFFFDF6F7),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(8)),

          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Masukkan NIS/Email',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  )
                ),
                controller: inputNIS,
                onFieldSubmitted: (values) {
                  inputNIS.text = values;
                },
              ),
            ),
          ),

            const Padding(padding: EdgeInsets.all(16)),
            ElevatedButton(
              child: const Text('Tampilkan NIS/Email'),
              onPressed: () {
                print (inputNIS.text);
              }
            ),
            const SizedBox(height: 12),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.logout),
              label: const Text('Keluar'),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
            ),
        ],
      ),
    );
  }
}

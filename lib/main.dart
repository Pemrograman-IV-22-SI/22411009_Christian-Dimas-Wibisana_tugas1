import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Biodata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Biodata'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/765913838054014986/1260894515690995803/4a2c131d871b28a5d88f2666c8725a79.png?ex=66ed4406&is=66ebf286&hm=2098babc292cbd40dbc2c13b497426b04b9745101a599d73dc20cf6dbfd41e52&'),
            ), // Add a profile picture
            const SizedBox(height: 20.0),
            Text(
              'Bio Data',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Text(
                  'Nama:',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 10.0),
                Text(
                  'Christian Dimas Wibisana',
                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              children: [
                const Text(
                  'Jenis Kelamin:',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 10.0),
                Text(
                  'Laki-laki',
                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              children: [
                const Text(
                  'Alamat:',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 10.0),
                Flexible(
                  child: Text(
                    'Jalan in aja dulu no 27a bandar lampung',
                    style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              children: [
                const Text(
                  'Tanggal Lahir:',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(width: 10.0),
                Text(
                  '23 Desember 2003',
                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
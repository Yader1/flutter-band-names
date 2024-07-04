import 'package:flutter/material.dart';

import 'package:band_names/pages/models/band.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Band> bands = [
    Band(id: '1', name: 'Metalica', votes: 10),
    Band(id: '2', name: 'Paradais', votes: 5),
    Band(id: '3', name: 'Linkin Park', votes: 8)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('BandNames', style: TextStyle(color: Colors.black87)),
      ),
      body: ListView.builder(
        itemCount: bands.length,
        itemBuilder: (context, i) => _bandTile(bands[i])
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 1,
        child: const Icon(Icons.add),
      ),
    );
  }

  ListTile _bandTile(Band band) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: Text(band.name!.substring(0,2)),
      ),
      title: Text(band.name!),
      trailing: Text('${band.votes}', style: const TextStyle(fontSize: 20)),
      onTap: (){

      },
    );
  }
}
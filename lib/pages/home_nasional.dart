import 'package:flutter/material.dart';
import 'package:flutter_nada_nusantara_app/models/nasional.dart';
import 'package:flutter_nada_nusantara_app/pages/detail_page_nasional.dart';

class HomeNasional extends StatefulWidget {
  const HomeNasional({super.key});

  @override
  State<HomeNasional> createState() => _HomeNasionalState();
}

class _HomeNasionalState extends State<HomeNasional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lagu Nasional',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 2,
        backgroundColor: const Color(0xFF167b59),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPageNasional(
                  nasional: laguNasionalList[index],
                );
              }));
            },
            child: Card(
              color: const Color(0xFF179067),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(5), // Mengatur border radius
              ),
              child: ListTile(
                title: Text(
                  style: const TextStyle(color: Colors.white),
                  laguNasionalList[index].judul,
                ),
                subtitle: Text(
                    style: const TextStyle(color: Colors.white),
                    '${laguNasionalList[index].pencipta}'),
                leading: ClipOval(
                  child: Image.network(
                    laguNasionalList[index].photo,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: laguNasionalList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Tambah lagu'),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nama Lagu',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nama Daerah',
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                );
              });
        },
        backgroundColor: Colors.blueGrey[800],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

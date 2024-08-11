import 'package:flutter/material.dart';
import 'package:flutter_nada_nusantara_app/models/province.dart';
import 'package:flutter_nada_nusantara_app/pages/detail_page_daerah.dart';

class HomeDaerah extends StatefulWidget {
  const HomeDaerah({super.key});

  @override
  State<HomeDaerah> createState() => _HomeDaerahState();
}

class _HomeDaerahState extends State<HomeDaerah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lagu Daerah',
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
                return DetailPage(
                  province: laguDaerahList[index],
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
                  laguDaerahList[index].laguDaerah,
                ),
                subtitle: Text(
                    style: const TextStyle(color: Colors.white),
                    '${laguDaerahList[index].nama} - ${laguDaerahList[index].ibuKota}'),
                leading: ClipOval(
                  child: Image.network(
                    laguDaerahList[index].photo,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: laguDaerahList.length,
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

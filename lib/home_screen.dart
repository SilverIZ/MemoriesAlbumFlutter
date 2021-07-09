import 'package:memories_album/model/data_album.dart';
import 'package:flutter/material.dart';
import 'package:memories_album/detail_screen.dart';

/*Submission Dicoding
Iskandar Zulkarnaen
silverzulkarnaen@gmail.com*/

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Memories Album'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return DataAlbumGrid(gridCount: 2);
            } else if (constraints.maxWidth <= 900) {
              return DataAlbumGrid(gridCount: 3);
            } else if (constraints.maxWidth <= 1200) {
              return DataAlbumGrid(gridCount: 4);
            } else if (constraints.maxWidth <= 1500) {
              return DataAlbumGrid(gridCount: 5);
            } else {
              return DataAlbumGrid(gridCount: 6);
            }
          },
        ));
  }
}

class DataAlbumGrid extends StatelessWidget {
  final int gridCount;

  DataAlbumGrid({required this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: dataAlbumList.map((album) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(album: album);
                }));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          album.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        album.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        album.nim,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        album.prodi,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:memories_album/model/data_album.dart';

/*Submission Dicoding
Iskandar Zulkarnaen
silverzulkarnaen@gmail.com*/
class DetailScreen extends StatelessWidget {
  final DataAlbum album;

  DetailScreen({required this.album});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return DetailMobilePage(album: album);
      },
    );
  }
}

class DetailMobilePage extends StatefulWidget {
  final DataAlbum album;

  const DetailMobilePage({required this.album});

  @override
  _DetailMobilePageState createState() => _DetailMobilePageState();
}

class _DetailMobilePageState extends State<DetailMobilePage> {
  Color _colorBg = Colors.white;
  Color _colorBtn = Colors.blue;
  bool isLight = true;
  void changeBackground() {
    setState(() {
      if (_colorBg == Colors.white) {
        _colorBg = Colors.black54;
        return;
      }
      _colorBg = Colors.white;
    });
  }

  void changeButton() {
    setState(() {
      if (_colorBtn == Colors.blue) {
        _colorBtn = Colors.purple;
        return;
      } else if (_colorBtn == Colors.purple) {
        _colorBtn = Colors.red;
        return;
      }
      _colorBtn = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: _colorBg),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.only(left: 50.0, right: 50.0, top: 30.0),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            widget.album.imageAsset,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                isLight
                                    ? Icons.wb_sunny
                                    : Icons.wb_sunny_outlined,
                                color: Colors.yellow,
                              ),
                              onPressed: () {
                                setState(() {
                                  isLight = !isLight;
                                  changeBackground();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    widget.album.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Yanone',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              child: ElevatedButton(
                                child: Text(
                                  'Prodi : \n' + widget.album.prodi,
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: _colorBtn,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 10),
                                    textStyle: TextStyle(fontSize: 25)),
                                onPressed: () {
                                  changeButton();
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              child: ElevatedButton(
                                child: Text(
                                  'NIM : \n' + widget.album.nim,
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: _colorBtn,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 10),
                                    textStyle: TextStyle(fontSize: 25)),
                                onPressed: () {
                                  changeButton();
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              child: ElevatedButton(
                                child: Text(
                                  'Tanggal Lahir :\n ' + widget.album.ttl,
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: _colorBtn,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                ),
                                onPressed: () {
                                  changeButton();
                                },
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              child: ElevatedButton(
                                child: Text(
                                  'No. HP : \n' + widget.album.phone,
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: _colorBtn,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 10),
                                    textStyle: TextStyle(fontSize: 25)),
                                onPressed: () {
                                  changeButton();
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              child: ElevatedButton(
                                child: Text(
                                  'Hobi : \n' + widget.album.hobi,
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: _colorBtn,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 10),
                                    textStyle: TextStyle(fontSize: 25)),
                                onPressed: () {
                                  changeButton();
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              child: ElevatedButton(
                                child: Text(
                                  'Cita-cita: \n' + widget.album.cita,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: _colorBtn,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                ),
                                onPressed: () {
                                  changeButton();
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Alamat:\n' + widget.album.address,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, fontFamily: 'Benne'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Motto :\n' + '" ' + widget.album.motto + ' "',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, fontFamily: 'Yanone'),
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

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import '../../login/login_widget.dart';

class ImportQR extends StatefulWidget {
  @override
  _ImportQRState createState() => _ImportQRState();
}

class _ImportQRState extends State<ImportQR> {
  String _data = '';
  File imageFile;
  String path = "";

  Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => toLogin());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QR Code Read Gallery'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              path.isEmpty
                  ? Image.asset(
                      'assets/images/qricon.png',
                      width: 500,
                      height: 500,
                    )
                  : Image.file(
                      File(path),
                      width: 500,
                      height: 500,
                    ),
              RaisedButton(
                child: Text("Select file"),
                onPressed: _getFromGallery,
              ),
              Text('Qr Code data: $_data\n'),
            ],
          ),
        ),
      ),
    );
  }

  Future _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      path = pickedFile.path;
      _data = await scanner.scanPath(path);
      imageFile = File(pickedFile.path);
      setState(() {});
    }
  }

  void toLogin() {
    if (_data.isNotEmpty) {
      String user;
      String passwd;

      for (int i = 0; i < _data.length; i++) {
        if (_data[i] == ' ') {
          user = _data.substring(0, i);
          passwd = _data.substring(i + 1);
        }
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginWidget(user: user, passwd: passwd),
        ),
      );

      timer.cancel();
    }
  }
}

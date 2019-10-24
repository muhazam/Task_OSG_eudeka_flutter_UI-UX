import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.accessibility_new,
            color: Colors.black,
          ),
          title: Text(
            'Panjat Pinang',
          ),
          backgroundColor: Colors.white,
          textTheme: TextTheme(
              title: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0)),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.network(
                    'https://cdn.dribbble.com/users/2549899/screenshots/6866941/image.png',
                  ),
                ),
              ),
            ),
            getData(),
            getIconButton()
          ],
        ),
      ),
    );
  }

  getData() {
    return ListBody(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 15.0, 16.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Panjat Pinang",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Panjat pinang adalah salah satu lomba tradisional yang populer pada perayaan hari kemerdekaan Indonesia. Sebuah pohon pinang yang tinggi dan batangnya dilumuri oleh pelumas disiapkan oleh panitia perlombaan. Di bagian atas pohon tersebut, disiapkan berbagai hadiah menarik. Para peserta berlomba untuk mendapatkan hadiah-hadiah tersebut dengan cara memanjat batang pohon yang biasanya pohon pinang. "
              ),
            ),
          )
        )
      ],
    );
  }

  getIconButton() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          IconText(
            icon: Icons.call,
            text: "Panggil",
          ),
          IconText(
            icon: Icons.message,
            text: "Tulis Pesan",
          ),
          IconText(
            icon: Icons.photo,
            text: "Galery",
          ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  
  final IconData icon;
  final String text;
  IconText({this.icon, this.text});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(
            icon, size: 30.0, color: Colors.blue,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

  
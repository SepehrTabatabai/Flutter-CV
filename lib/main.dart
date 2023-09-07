import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "vazir"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppbar(),
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }
  // This Is Widget For App Bar Which Return in Line 16

  PreferredSizeWidget _getAppbar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Text("Application AppBar"),
      centerTitle: true,
    );
  }

// This Is Widget For getMainBody Which Return In Body Line 18
// Also We Use ScrollView To Fix Button Of Screen To Scrolling
  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          _getHeder(),
        ],
      ),
    );
  }
}

// Get Hedear Widger For Makeing Code More Clear And Good To Understand
//  This Will Show Us Headr Of The App And Return Is Line 42 Of Childern Coulmn

Widget _getHeder() {
  return Column(
    children: [
      // Sized Box For Make Some Space f Top Of The Screen
      SizedBox(height: 20.0),
      // CircleAvatar To Show Pictur In App
      CircleAvatar(
        backgroundImage: AssetImage("assets/images/seyed.jpg"),
        radius: 100.0,
      ),
      SizedBox(height: 10.0),
      Text(
        "Hello",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "My Name iS Sepehr Im a Flutter Developer",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        "  Starting The New Journy And Hope To Be A FullStack Developer",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10.0),
      _getRowIconts(),
      SizedBox(height: 12),
      _getSkillCards(),
      SizedBox(height: 12.0),
      _getResume(),
    ],
  );
}

Widget _getResume() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
    width: double.infinity,
    color: Colors.blueGrey,
    child: Column(
      children: [
        Text(
          "The User Work BackGround",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 20.0,
            ),
            Text("1 :  User Data :  Resume Or Info About User ...."),
            Text("2 :  User Data :  Resume Or Info About User ...."),
            Text("3 :  User Data :  Resume Or Info About User ...."),
            Text("4 :  User Data :  Resume Or Info About User ...."),
          ],
        ),
      ],
    ),
  );
}

Widget _getSkillCards() {
  var list = ["android", "dart", "flutter", "java", "kotlin"];

  return Wrap(
    children: [
      for (var skill in list)
        Card(
          elevation: 6.00,
          shadowColor: Colors.black,
          child: Column(
            children: [
              Container(
                height: 80.0,
                width: 80.0,
                child: Image(
                  image: AssetImage("assets/images/$skill.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.00),
                child: Text("$skill"),
              )
            ],
          ),
        ),
    ],
  );
}

//Show Iconts From Awsome Font PubDev Using Pacage
// Reason ((instagramSquare / whatsappSquare / githubSquare)) Show Diffrent Cuz They Dont Use Like This Anymore But I Love To Use Them

Widget _getRowIconts() {
  //  Using Rao Widget To Show Icons Its Kinnda Like SingelChiledScrollView
  //  Warp Have 3 opp : runSpacing / spacing / ..........
  return Wrap(
    spacing: 15.0,
    children: [
      IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.squareInstagram,
          color: Color.fromARGB(255, 195, 0, 255),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.telegram,
          color: Color.fromARGB(255, 0, 26, 255),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.squareGithub,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.squareWhatsapp,
          color: Color.fromARGB(255, 0, 255, 8),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.steam,
          color: Color.fromARGB(255, 10, 0, 95),
        ),
      ),
    ],
  );
}

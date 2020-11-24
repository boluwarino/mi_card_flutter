import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

//kind of like the main method
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  //main widget; basicaally builds the whole page layout
  Widget build(BuildContext context) {
    //material app widget; shows this is a material app
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Text('My CV'),
          backgroundColor: Colors.blue.shade500,
        ),
        //safe area widget helps the app stay on the screen
        body: SafeArea(
          //column widget gives the app a column structure i.e vertical positioning of widgets for the app screen
          child: Column(
              //mainAxisAlignment is a property of the Column widget that centers all elements in the Column widget
              mainAxisAlignment: MainAxisAlignment.center,
              /*the children property depicts that the widgets will be located inside of the column widget
                essentially, the column widget is where all the content on the page is located
              */
              children: <Widget>[
                //circleavatar widget is for the picture; it makes the picture into a circle , perfect for user avi's
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(
                      'images/linkedinpic.jpg'), //assetimage indicates a locally stored image within the project
                ),
                //text widget for a piece of text
                Text(
                  'Boluwarin Oladipo',
                  //textstyle widget inside of the style property of he text widget to style the text
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'IT CONSULTANT',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 30.0,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                /*sizedbox is basically a container for any specific content
                 on an activity page that does not have a pre-built widget in the flutter api 
                 */
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.blueGrey.shade100,
                  ),
                ),

                //cell phone tile card
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade500,
                    ),
                    title: InkWell(
                      onTap: () => launch('sms: +2349056999304'),
                      child: Text(
                        '+234 905 699 9304',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),

                //email tile conainer
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade500,
                    ),
                    title: InkWell(
                      onTap: () => launch(
                          'mailto:boluwarin.oladipo@gmail.com?subject=Hello&body=Hi%20My%20name%20is%20'),
                      child: Text(
                        'boluwarin.oladipo@gmail.com',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

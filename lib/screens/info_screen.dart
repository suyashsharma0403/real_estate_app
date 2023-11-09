import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//info screen
class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          color: Color(0xF7F7F7), //0xF7F7F7 0xEBEBEB
          child:MyScreen(),
        )

      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  //method to fetch url data
  _launchURL() async {
    Uri _url = Uri.parse('https://findtheinvisiblecow.com/');
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:30),
          Text(
            'ABOUT',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30), // Add some space
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,',
            style: TextStyle(
                fontSize: 12,
                color:Colors.grey
            ),
          ),
          SizedBox(height: 30), // Add more space
          Text(
            'Design and Development',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Image.asset("images/house_io.png", height: 70,),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('by House.io'),
                  InkWell(
                    onTap: _launchURL,
                    child: const Text(
                      'house-io.nl',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,),
                    )
                  )
                ],
              )


            ],
          )
          // Add space

        ],
      ),
    );
  }
}

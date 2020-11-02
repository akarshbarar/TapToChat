import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController whatsappNumber=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap To Chat"),
        automaticallyImplyLeading: false,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ENTER WHATSAPP NUMBER",style: TextStyle(fontSize: 25),),
            TextField(
              controller: whatsappNumber,
              autocorrect: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter Your Number Here'),
            ),
            MaterialButton(
              child: Text("Tap_To_Chat"),
              onPressed: _launchURL,
            ),
          Text("with country code without + sign",style: TextStyle(fontSize: 10),),

          ],
        ),
      ),
    );
  }
  _launchURL() async {
    if(whatsappNumber.text.toString().length==12){
        var url = 'http://wa.me/'+whatsappNumber.text.toString();
        await launch(url);
    }
    else{
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Error"),
            content: Text("Please Enter Correct Mobile Number with Country code"),
          )
      );
    }
  }
}

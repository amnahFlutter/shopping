import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class singn extends StatefulWidget {
  const singn({super.key});

  @override
  State<singn> createState() => _singnState();
}

class _singnState extends State<singn> {
  final String googleSignInUrl = "https://accounts.google.com/signin";
  Future<void> _launchURL() async {
    final Uri url = Uri.parse(googleSignInUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $googleSignInUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding:  EdgeInsets.only(right:20,left:20,top: 40),
      child: Material(
        color:Colors.black,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(onPressed:_launchURL,
          minWidth:430,
          height:40,
          child: Row(
            children: [
              Image.asset("asset/googleim.png",
                height: 35,
                width: 35,),
              SizedBox(width: 40,),
              Text("Sign in with Google",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
              ),),
            ],
          ),
        ),
      ),
    );

  }
}
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/screens/yourpage.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController userInput = TextEditingController();
  String myText = "";
  String mypassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log in page")),
      body: SingleChildScrollView(
        child: Column(children: [
          CircleAvatar(
            radius: 100,
            child: Image(image: AssetImage("images/2.png")),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextFormField(
              onChanged: ((value) {
                myText = value.toString();
                // if (myText == "asaqa001@gmail.com") {
                //   showDialog(
                //       context: context,
                //       builder: (context) {
                //         return AlertDialog(
                //           content: Text("email was found"),
                //         );
                //       });
                // }
              }),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Please enter your email",
                  label: Text(
                    "Email",
                    style: TextStyle(fontSize: 25),
                  ),
                  prefixIcon: Icon(Icons.people)),
              maxLines: 1,
              maxLength: 20,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextFormField(
              onChanged: ((value) {
                mypassword = value.toString();
              }),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Please enter your password",
                  label: Text(
                    "password",
                    style: TextStyle(fontSize: 25),
                  ),
                  prefixIcon: Icon(Icons.people)),
              maxLines: 1,
              maxLength: 20,
              textAlign: TextAlign.center,
              obscureText: true,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (myText == "asaqa001@gmail.com" && mypassword == "123") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return your_page();
                  }));
                } else if (myText != "asaqa001@gmail.com" &&
                    mypassword != "123") {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Center(
                            child: Text("sorry wrong email or password"),
                          ),
                        );
                      });
                }
              },
              child: Text("log-in")),
        ]),
      ),
    );
  }
}

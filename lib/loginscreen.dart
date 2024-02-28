import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameTextController =
      TextEditingController(text: "Populated Content");
  TextEditingController pwdTextController = TextEditingController();
  String displayText = "";
  RegExp digitValidator = RegExp("[0-9]+");
  bool isAnumber = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("widget.title"),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                  backgroundColor: Colors.greenAccent[400],
                  radius: 100.0,
                  child: Text("User")),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: TextField(
                // onChanged: (inputValue) {
                //   if (inputValue.isEmpty || digitValidator.hasMatch(inputValue)) {
                //     setState(() {
                //       isAnumber = true;
                //     });
                //   } else {
                //     setState(() {
                //       isAnumber = false;
                //     });
                //   }
                // },
                //keyboardType: TextInputType.text,
                controller: userNameTextController,
                //maxLines: 5,
                decoration: InputDecoration(
                    errorText:
                        isAnumber ? null : " Please enter only non-numbers",
                    hintText: "User name",
                    filled: false,
                    fillColor: Colors.blueAccent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    )),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5.0),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: pwdTextController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Colors.blueAccent,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.black, width: 1.0),
                      )),
                )),
            ElevatedButton(
                onPressed: () {
                  //print(userNameTextController.text);
                  Navigator.pushNamed(context, '/listScreen');
                },
                child: Text("Login"))
          ],
        )));
  }
}

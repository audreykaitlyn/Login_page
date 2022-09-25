import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body:
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600, 
                    fontSize: 20
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const UserInfo(),
              ),
              
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: 
                  TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.fromLTRB(27, 10, 27, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )
                  ),
                  onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500, 
                        fontSize: 18
                      ),  
                    ),
                  ),
              )
            ]
          ),
        )
    );

  }
}

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Container(
            width: 300,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              style:const TextStyle(
                color: Color.fromARGB(255, 93, 93, 93) ,
                fontWeight: FontWeight.w500, 
                fontSize: 17
              ),
                decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(      
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 93, 93)),   
                ),  
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 93, 93)),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 93, 93)),
                ),
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 93, 93, 93) ,
                  fontWeight: FontWeight.w500, 
                  fontSize: 17
                ),
                hintText:  ' Email ',
              ),
            ),
          ),

          Container(
            width: 300,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: TextFormField(
              obscureText: visibility,
              textInputAction: TextInputAction.next,
              style:const TextStyle(
                color: Color.fromARGB(255, 93, 93, 93) ,
                fontWeight: FontWeight.w500, 
                fontSize: 17
              ),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      visibility = visibility ? false : true;
                    });
                  }, 
                  icon: 
                    Icon(
                      visibility ? Icons.visibility_off : Icons.visibility,
                      color: visibility ? const Color.fromARGB(255, 93, 93, 93) : Colors.red,
                    )
                ),
                enabledBorder: const UnderlineInputBorder(      
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 93, 93)),   
                ),  
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 93, 93)),
                ),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 93, 93)),
                ),
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 93, 93, 93) ,
                  fontWeight: FontWeight.w500, 
                  fontSize: 17
                ),
                hintText:  ' Password ',
              ),
            ),
          )
        ],
      );
  }
}

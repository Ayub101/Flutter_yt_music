import 'package:flutter/material.dart';
import 'package:youtube_music_clone/widget/base_screen.dart';
import 'package:youtube_music_clone/screens/signup.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _login();
}

class _login extends State<login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    transformAlignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(10),
                    child:Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                           CircleAvatar(
                            backgroundImage: AssetImage("assets/Images/yotubemusic_logo.png"),
                            radius: 40.0,
                            backgroundColor: Colors.black,

                          ),
                          SizedBox(
                            height: 20,
                            width: 30,
                          ),
                          Text(
                            'YT Music',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 40),
                          ),

                        ]
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color:Colors.white,
                          fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      fillColor: Color(0xff2e2e2e),
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Email ',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      fillColor: Color(0xff2e2e2e),
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text('Forgot Password',
                      style:TextStyle(
                        color: Colors.blue,
                      )),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          primary: Colors.redAccent[700],
                        ),
                        child: const Text('Login',
                          style:TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // Within the `FirstRoute` widget
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const base_screen()),
                          );
                        }
                    )
                ),
                Row(
                  children: <Widget>[
                    const Text('Does not have account?',
                    style:TextStyle(color: Colors.white)
                    ),
                    TextButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const signup()),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )
        )
    );
  }
}

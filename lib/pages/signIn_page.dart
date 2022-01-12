import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String name = '';
  bool changename = false;
  bool cratescreen = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changename = true;
      });
      await Future.delayed(Duration(seconds: 3));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
      setState(() {
        changename = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Image.asset(
                  '/Users/abdullahshakir/Flutter/Projects/first_app/assets/createaccount.png',
                ),
              ),
              Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: GoogleFonts.bubblegumSans().fontFamily,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter Your Full-Name Here',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: 'Enter Your Username Here',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Username";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Enter Your Phone Number Here',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Phone Number";
                        } else if (value.length < 12) {
                          return "Password must be 12 letters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Your Password Here',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Password";
                        } else if (value.length < 8) {
                          return "Password must be 8 letters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        alignment: Alignment.center,
                        width: changename ? 50 : 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[700],
                            borderRadius:
                                BorderRadius.circular(changename ? 50 : 8)),
                        child: changename
                            ? Icon(
                                Icons.done_all,
                                color: Colors.white,
                              )
                            : Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.bubblegumSans().fontFamily,
                                    fontSize: 18),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
              ),

              // CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

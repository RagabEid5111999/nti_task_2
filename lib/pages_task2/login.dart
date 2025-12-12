import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  Login({super.key});
  @override
  State<Login> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  bool passeye = true;

  Widget customContainerWithTextField({
    required TextInputType inputType,
    required String hintText,
    required IconData icon,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 68),
      decoration: BoxDecoration(
        color: Colors.purple[50],

        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        cursorHeight: 20,
        keyboardType: inputType,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
          border: InputBorder.none,
          prefixIconColor: Colors.purple,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          prefixIcon: Icon(icon, size: 22),

          contentPadding: EdgeInsets.symmetric(vertical: 4), // labelStyle:
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 25,
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "Log in".toUpperCase(),
                        style: TextStyle(fontSize: 25, fontFamily: "MyNewFont"),
                      ),
                      SvgPicture.asset("assets/icons/login.svg", width: 285),
                      customContainerWithTextField(
                        inputType: TextInputType.emailAddress,
                        hintText: "Ragab@gmail.com",
                        icon: Icons.mail,
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 68,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.purple[50],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          obscureText: passeye,
                          cursorHeight: 20,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                passeye ? passeye = false : passeye = true;
                                setState(() {});
                              },
                              // icon: Icon(Icons.remove_red_eye_outlined),
                              icon:
                                  passeye
                                      ? Icon(Icons.remove_red_eye)
                                      : Icon(Icons.remove_red_eye_outlined),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            suffixIconColor: Colors.purple,
                            prefixIconColor: Colors.purple,
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            prefixIcon: Icon(Icons.lock_sharp, size: 22),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 4,
                            ), // labelStyle:
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, "/login"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.purple,
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 79, vertical: 10),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                        child: Text(
                          "Login".toUpperCase(),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an acount"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signup");
                            },
                            child: Text(
                              "Signup".toUpperCase(),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[850],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Image.asset("assets/images/main_top.png", width: 111),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset("assets/images/main_bottom.png", width: 111),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

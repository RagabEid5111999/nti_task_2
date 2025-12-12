import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatefulWidget {
  Signup({super.key});
  @override
  State<Signup> createState() {
    return _Signup();
  }
}

class _Signup extends State<Signup> {
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
                    spacing: 10,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        "Sign Up".toUpperCase(),
                        style: TextStyle(fontSize: 25, fontFamily: "MyNewFont"),
                      ),
                      SvgPicture.asset("assets/icons/signup.svg", width: 200),
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
                          "Signup".toUpperCase(),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Aready have an acount"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signup");
                            },
                            child: Text(
                              "Signin".toUpperCase(),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[850],
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Divider(
                      //   thickness: 3,
                      //   color: Colors.black,
                      //   height: 10,
                      //   indent: 70,
                      //   endIndent: 240,
                      // ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 70, right: 5),
                            color: Colors.grey,
                            height: 3,
                            width: 120,
                          ),
                          Text("OR"),
                          Container(
                            margin: EdgeInsets.only(right: 61, left: 5),
                            color: Colors.grey,
                            height: 3,
                            width: 120,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 50,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            width: 20,
                            color: Colors.purple,
                          ),
                          SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            width: 20,
                            color: Colors.purple,
                          ),
                          SvgPicture.asset(
                            "assets/icons/google-plus.svg",
                            width: 20,
                            color: Colors.purple,
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

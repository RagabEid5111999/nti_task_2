import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
              SizedBox(
                width: double.infinity,
                child: Column(
                  spacing: 25,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "Welcome To EDU",
                      style: TextStyle(fontSize: 25, fontFamily: "MyNewFont"),
                    ),
                    SvgPicture.asset("assets/icons/chat.svg", width: 285),
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

                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, "/signup"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.purple[200],
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
                        style: TextStyle(fontSize: 18, color: Colors.grey[850]),
                      ),
                    ),
                  ],
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

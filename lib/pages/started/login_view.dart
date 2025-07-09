import 'package:fitness_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class LoginView extends StatelessWidget{
  const LoginView({Key ? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                backgroundImage(),
                titleSubtitle()
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formLogin(),
                  const SizedBox(height: 15,),
                  forgetButton(),
                  const SizedBox(height: 15,),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: Get.width*0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueAccent
                            ),
                            child: Center(child: Text('Login', style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: Get.width*0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: Colors.blueAccent)
                            ),
                            child: Center(child: Text('Sign-up', style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        )
                      ],
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Align forgetButton() {
    return Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot your password', style: TextStyle(fontSize: 18, color: Colors.white),),
                  ),
                );
  }

  Column formLogin() {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email', style: TextStyle(fontSize: 18, color: Color(0xFF707070)),),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "rohitkala02@gmail.com",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF707070)
                          )
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF707070)
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text('Password', style: TextStyle(fontSize: 18, color: Color(0xFF707070)),),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "******",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF707070)
                          )
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF707070)
                          )
                        ),
                      ),
                    ),
                  ],
                );
  }

  Container titleSubtitle() {
    return Container(
                height: Get.height*0.55,
                width: Get.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      kThirdColor,
                      Colors.transparent
                    ]
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      RichText(
                        text: TextSpan(
                          text: 'HARD\t',
                          style: TextStyle(fontSize: 30, letterSpacing: 5, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'ELEMENT', style: TextStyle(color: Colors.blueAccent)
                            )
                          ]
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Sign-up', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                              SizedBox(height: 8,),
                              Text('Train and live the new experience of \ntraining at home.', style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              );
  }

  Container backgroundImage() {
    return Container(
                height: Get.height*0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Strength.jpg'),
                    fit: BoxFit.cover,
                  )              
                ),
              );
  }
}
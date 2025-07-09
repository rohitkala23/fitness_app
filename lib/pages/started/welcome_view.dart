import 'package:fitness_app/routes/app_pages.dart';
import 'package:fitness_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget{
  const WelcomeView({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Welcome.png'),
                fit: BoxFit.cover,
              )
            ), 
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  RichText(
                    text: TextSpan(
                      text: 'HARD\t', 
                      style: 
                        TextStyle(fontSize: 30, letterSpacing: 5, color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'ELEMENT',
                            style: TextStyle(color: Colors.blueAccent)
                          )
                        ]
                    )
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                        SizedBox(height: 17,),
                        Text('Train and live the new experience of \nexercising at home.', style: TextStyle(color: Colors.white,),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  TextButton(
                    onPressed: (){
                      Get.toNamed(Routes.ABOUT);
                    }, 
                    child: Container(
                      height: 50,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Center(
                        child: Text('Try Now', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    )
                  ),
                  const SizedBox(height: 10,),
                  TextButton(
                    onPressed: (){}, 
                    child: Container(
                      height: 50,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.white)
                      ),
                      child: Center(
                        child: Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
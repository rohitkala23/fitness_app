import 'package:fitness_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget{
  const ForgetPasswordView({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(),
            bodyForm(),
            footerButton()
          ],
        ),
      ),
    );
  }

  Widget footerButton() {
    return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Get.back(),
                  child: Container(
                    height: 50,
                    width: Get.width*0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueAccent
                    ),
                    child: Center(child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 20,),)),
                  ),
                ),
                const SizedBox(height: 15,),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Container(
                    height: 50,
                    width: Get.width*0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width:1, color: Colors.blueAccent)
                    ),
                    child: Center(child: Text('Cancel', style: TextStyle(color: Colors.white, fontSize: 20,),)),
                  ),
                )
              ],
            ),
          );
  }

  Widget bodyForm() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email', style: TextStyle(fontSize: 18, color: Color(0xFF707070)),),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'rohitkala02@gmail.com',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF707070)
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF707070)
                      )
                    ),  
                  )
                )
              ],
            ),
          );
  }

  Widget headerWidget() {
    return Stack(
            children: [
              Container(
                height: Get.height*0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Abs.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Container(
                height: Get.height*0.55,
                width: Get.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      kThirdColor,
                      Colors.transparent])
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'HARD\t', style: TextStyle(fontSize: 30, letterSpacing: 5, color: Colors.white),
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
                          children: [
                            Text('Forget Password', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                            const SizedBox(height: 10,),
                            Text('Train and live the new experience of \neexercising at home', style: TextStyle(color: Colors.white),)
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
  }
}
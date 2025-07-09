import 'package:fitness_app/shared/styles/colors.dart';
import 'package:fitness_app/shared/widgets/option_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget{
  const AboutView({Key ? key}) : super(key :key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Training.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            width: Get.width,
            height: Get.height,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  RichText(
                    text: TextSpan(
                      text: 'HARD\t', style: TextStyle(fontSize: 30, letterSpacing: 5, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'ELEMENT',
                          style: TextStyle(color: Colors.blueAccent)
                        )
                      ])
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('About You', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
                        SizedBox(height: 5,),
                        Text('We want to know more about you, follow the next \nsteps to complete the information.', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (int? value, ValueBuilderUpdateCallback<int?> updateFn) => Row(
                      children: [
                        OptionWidget(
                          onTap: () => updateFn(0),
                          state: "I'm\nBeginner",
                          detail: "I have trained several times",
                          enable: value == 0 ? true : false, 
                        ),
                        SizedBox(width: 10,),
                        OptionWidget(
                          onTap: () => updateFn(1),
                          state: "I'm\nExpert",
                          detail: "I have trained many times",
                          enable: value == 1 ? true : false, 
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Get.back(), 
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text('Back', style: TextStyle(color: Colors.grey, fontSize: 16),),
                        )
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blueAccent
                          ),
                          child: Center(child: Text('Next', style: TextStyle(fontSize: 16, color: Colors.white),)),
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({super.key,
  required this.iconImagePath,
  required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return   Column(
                      children: [
                        //icon
                        Container(
                          height:75,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                          color: Color(0xFFFFECEE),
                 
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 10,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(iconImagePath),
                            ),
                        ),
                         SizedBox(
                        height: 10,
                      ),
                      //text
                   Text(buttonText,
                   style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,

                   ),
                   ),
                      ],
                    );
  }
}
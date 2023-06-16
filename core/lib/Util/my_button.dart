import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
                      children: [
                        //icon
                        Container(
                          height:75,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.amber[200],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 20,
                                spreadRadius: 2,
                              )
                            ]
                          ),
                          child: Center(
                            child: Image.asset('lib/icons/plus.png'),
                            ),
                        ),
                      ],
                    );
  }
}
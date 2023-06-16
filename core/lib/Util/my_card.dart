import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryear;
  final color;

  const MyCard({
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryear,
    required this.color,
    super.key});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:25),
      child: Container(
                    width: 200,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(16),
                      ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 10),
                        Text('Balance',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(height:10),
                        Text('Rs.'+ balance.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 26,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        
                          Text(
                            cardNumber.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          ),
                        ),
                         
                          Text(
                            expiryMonth.toString() + '/' + expiryear.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          ),
                        ),
                     
                        ],)
                      ],
                    ),
                  ),
    );
  }
}
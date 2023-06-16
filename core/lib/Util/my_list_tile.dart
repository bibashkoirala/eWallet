import 'package:flutter/material.dart';

class MyListtile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;
  const MyListtile({
    super.key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubtitle,
    });

  @override
  Widget build(BuildContext context) {
    return 
                       Padding(
                         padding: const EdgeInsets.only(bottom:10.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(children: [
                            //ico n
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Container(
                              height: 50,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(12),
                                ),
                              child: Image.asset(iconImagePath),
                                                
                                                    ),
                            ),
                         
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(tileTitle,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                          
                                ),
                                ),
                               
                                Text(tileSubtitle,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                          
                                ),
                                ),
                              ],
                            ),
                          ),
                          ],),
                          Icon(Icons.arrow_forward_ios,
                          color: Colors.grey[600],),
                                             ],
                          
                                             ),
                       );
  }
}
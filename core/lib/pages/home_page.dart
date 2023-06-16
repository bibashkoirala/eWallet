import 'package:core/Util/my_button.dart';
import 'package:core/Util/my_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController(

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your home page content here
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
            
                
                // AppBar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                     Row(children: [
                       Text('e',
                      style: TextStyle(
                        fontSize:26,
                         color: Color(0xFFFF3D55),
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('Wallet',
                      style: TextStyle(
                        fontSize:26,
                        color: Color(0xFF77358F),
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                     ],
                     ),
                      //plus button FFA500
                      const Spacer(),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.person_off_outlined),
                          onPressed: () => {
                      
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),


                // cards
               Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5689.50,
                      cardNumber: 1234-5432-8987-98774,
                      expiryMonth: 12-25,
                      expiryear: 2085,
                      color: Colors.deepPurple,

                    ),
                    MyCard(
                      balance: 500009.50,
                      cardNumber: 1234-5432-8987-98774,
                      expiryMonth: 12-25,
                      expiryear: 2085,
                      color: Color(0xFFFF3D55),

                    ),
                    MyCard(
                      balance: 90000.50,
                      cardNumber: 1234-5432-8987-98774,
                      expiryMonth: 12-25,
                      expiryear: 2085,
                      color: Colors.orange,
                    ),
                  ],
                ),
               ),
               SizedBox(height:25),
               SmoothPageIndicator(
                controller: _controller, 
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.deepPurple,
                ),
                ),
                SizedBox(height:25),

                // buttons - send, pay,bills
                Row(
                  children: [
                    //send
                  MyButton(),
                      SizedBox(
                        height: 10,
                      ),
                      //text
                   Text('Send',
                   style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,

                   ),
                   ),
                  ],
                )
                //column - stats, transactions
              ],
            ),
         
        ),
     
    );
  }
}

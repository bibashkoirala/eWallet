import 'package:core/Util/my_button.dart';
import 'package:core/Util/my_card.dart';
import 'package:core/Util/my_list_tile.dart';
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
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
      backgroundColor: Colors.pink,
      child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {} , icon: Icon(Icons.home, size: 28, color: Colors.pink[600],)),
              IconButton(onPressed: () {} , icon: Icon(Icons.settings, size: 28,)),
            ],
          ),
        ),
      ),
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
                          color: Color(0xFFFFECEE),
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
                height: 150,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 589.50,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //send
                    MyButton(iconImagePath: 'lib/icons/cost.gif', buttonText: 'Send',),
                    MyButton(iconImagePath: 'lib/icons/wallet.gif', buttonText: 'Account',),
                    MyButton(iconImagePath: 'lib/icons/bill.gif', buttonText: 'Bills',),
                       
                    ],
                  ),
                ),
                SizedBox(height: 10,),

             Padding(
              padding: const EdgeInsets.all(10.0),
                 child: Column(
                    children: [
                    //statistic
                  MyListtile(
                    iconImagePath: 'lib/icons/laptop.gif',
                     tileTitle: 'Statistics',
                      tileSubtitle: 'Payments and Income',
                      ),
                      //Favroite List
                   MyListtile(
                   iconImagePath: 'lib/icons/heart.gif',
                     tileTitle: 'Favroite List',
                      tileSubtitle: 'Saved Contacts',
                      ),
                    //transaction
                     MyListtile(
                   iconImagePath: 'lib/icons/checklist.gif',
                     tileTitle: 'Transactions',
                      tileSubtitle: 'Transactions History',
                      ),
                  ],
                  ),
                ),

                //column - stats, transactions
              ],
            ),
         
        ),
     
    );
  }
}

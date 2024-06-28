import 'package:flutter/material.dart';

import '../Constants/Widgets/deal_card.dart';
import '../Constants/Widgets/shop_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
    appBar: AppBar(
        leading:IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
        title:  const Center(
            child: Text('Stylish',style: TextStyle(
                fontSize: 28,fontWeight: FontWeight.w500,color: Color(0xff4392f9)))),
        actions:  const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xffFD6E86),
              backgroundImage: AssetImage('Assets/Images/profile.jpg'),
            ),
          )
        ],
      ),

      /// Body
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              /// Horizontal Circle
              const Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('Assets/Images/Makeup.jpg'),
                      ),
                      Text('Beauty')
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('Assets/Images/Shopping_girls.jpg'),
                      ),
                      Text('Fashion')

                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('Assets/Images/Kids_shirts.jpg'),
                      ),
                      Text('Kids')
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('Assets/Images/Man_shirts.jpg'),
                      ),
                      Text('Mens')
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              /// Discount Card
              Container(
                height: 230,
                width: double.infinity,
                decoration:  BoxDecoration(
                  color: const Color(0xffFD6E86),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:   Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '50-40% OFF',
                      style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const Text('Now in (product)',style: TextStyle(color: Colors.white,fontSize: 17)),
                    const Text('All colour',style: TextStyle(color: Colors.white,fontSize: 17)),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFD6E86),
                          side: const BorderSide(color: Colors.white)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Shop Now',
                                  style: TextStyle(color: Colors.white,)),
                              Icon(Icons.arrow_forward,color: Colors.white,)
                            ],
                          )),
                    )
                  ],
                ),
              ),

             const SizedBox(height: 25),

              /// Deal Card
             const DealCard(),
              const SizedBox(height: 25),

              /// Special Offer
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: const Color(0xffE7E7EB).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                  children: [
                       CircleAvatar(
                        backgroundColor: const Color(0xffE7E7EB).withOpacity(0.2),
                      radius: 45,
                      backgroundImage: const AssetImage('Assets/Images/offer_cards.png'),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Special Offers',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500)),
                        const SizedBox(height: 10),
                        Text('We make sure you get the \n offer you need at best price',
                            style: TextStyle(fontSize:15,color: Colors.black.withOpacity(0.6))),
                      ],
                    )
                  ],
                                ),
                ),
             const SizedBox(height: 20),
              /// Heel Card
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffE7E7EB).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child:     Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xffE7E7EB).withOpacity(0.2),
                      radius: 80,
                      child: const Image(image: AssetImage('Assets/Images/sandal.png'),),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Flat And Heels',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.w500),),
                        Text('Stand a chance to get rewarded'),
                        SizedBox(height: 10),
                        ShopButton(color: Color(0xffF83758))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),

              /// Trending Product
           Container(
        padding: const EdgeInsets.all(10),
        height: 85,
        width: double.infinity,
        decoration:  BoxDecoration(
          color: const Color(0xffFD6E86),
          borderRadius: BorderRadius.circular(10),
        ),
        child:   const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Trending Products',style: TextStyle(fontSize: 22,color: Colors.white)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.calendar_month,color: Colors.white),
                    SizedBox(width: 10),
                    Text('Last Date 29/02/22',style: TextStyle(fontSize: 15,color: Colors.white)),
                  ],
                ),
              ],
            ),
            ShopButton(color: Color(0xffFD6E86))
          ],
        ),
      ),

          const SizedBox(height: 35),


              /// Summer sale Card
              Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration:  BoxDecoration(
                      color: const Color(0xfff8d7b4),
                      image:  const DecorationImage(
                        image: AssetImage('Assets/Images/banners.png'),fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                 const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('New Arrivals',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),

                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Summer’ 25 Collections',style:
                        TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(
                        width: 130,
                        child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffF83758),
                            side: const BorderSide(color: Colors.white)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('View all',
                                    style: TextStyle(color: Colors.white,)),
                                Icon(Icons.arrow_forward,color: Colors.white,)
                              ],
                            )),
                      )
                      // ShopButton(color: Color(0xffF83758)),
                    ],
                  ),
                  const SizedBox(height: 30,)

                ],
              )
            ],
          ),
        ),
      ),
      /// Bottom Navigation
      bottomNavigationBar:   Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            IconButton(onPressed: () => const HomeScreen(), icon: const Icon(Icons.home_outlined,size: 45,)),
            const SizedBox(width: 45),
            IconButton(onPressed: () => Container(color: Colors.red,),icon: const Icon(Icons.shopping_cart_checkout,size: 45,)),
            const SizedBox(width: 45),
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,size: 45,)),
            const SizedBox(width: 45),
            IconButton(onPressed: (){}, icon: const Icon(Icons.settings,size: 45,)),
          ]
        ),
      ),
    );
  }
}




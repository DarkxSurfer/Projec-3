import 'package:assignment_3_figma_ui/Constants/Widgets/shop_button.dart';
import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {
  const DealCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 90,
      width: double.infinity,
      decoration:  BoxDecoration(
        color: const Color(0xff4392F9),
        borderRadius: BorderRadius.circular(10),
      ),
      child:   const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Deal of the Day',style: TextStyle(fontSize: 22,color: Colors.white)),
              SizedBox(height: 10),
              Text('22h 55m 20s remaining',style: TextStyle(fontSize: 15,color: Colors.white)),
            ],
          ),
          ShopButton(color: Color(0xff4392F9))
        ],
      ),
    );
  }
}

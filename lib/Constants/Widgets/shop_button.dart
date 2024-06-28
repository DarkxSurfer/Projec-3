import 'package:flutter/material.dart';

class ShopButton extends StatelessWidget {
  const ShopButton({
    super.key, required this.color,
  });
final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
          backgroundColor: color,
          side: const BorderSide(color: Colors.white)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('View all',
                  style: TextStyle(color: Colors.white,)),
              Icon(Icons.arrow_forward,color: Colors.white,)
            ],
          )),
    );
  }
}
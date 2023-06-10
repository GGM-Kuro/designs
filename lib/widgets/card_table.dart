import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
        return Wrap(
            children: const [
                _SingleCard(color: Colors.blue, icon: Icons.grid_on, text: 'General',),
                _SingleCard(color: Colors.purple, icon: Icons.emoji_transportation, text: 'Transport',),
                _SingleCard(color: Colors.purpleAccent, icon: Icons.airplay, text: 'Airplay',),
                _SingleCard(color: Colors.teal, icon: Icons.shop, text: 'Shop',),
                _SingleCard(color: Colors.deepPurple, icon: Icons.movie, text: 'Movie',),
                _SingleCard(color: Colors.green, icon: Icons.tiktok, text: 'Tiktok',),
                _SingleCard(color: Colors.blueAccent, icon: Icons.food_bank, text: 'food_bank',),
                _SingleCard(color: Colors.indigo, icon: Icons.archive, text: 'Archive',),
            ],
        );
  }
}


class _SingleCard extends StatelessWidget {
  const _SingleCard({required this.icon, required this.color, required this.text});

    final IconData icon;
    final Color color;
    final String text;

  @override
  Widget build(BuildContext context) {
        return Container(

                margin: const EdgeInsets.all(15),
          child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                  height: 150,
                        width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(62, 66, 107, 0.7),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          CircleAvatar(
                              backgroundColor: color,
                              radius: 30,
                              child: Icon(icon,size: 35,),
                          ),
                          Text(text, style:  TextStyle( color: color, fontSize: 18 ) ,)
                      ],
                  ),
              ),
            ),
          ),
        );
  }
}

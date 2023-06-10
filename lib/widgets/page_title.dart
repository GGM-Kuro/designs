import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
        return SafeArea(
          child: Container(
                margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 30),
              child:const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Text('Clasify Transaction', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),),
                SizedBox( height: 10, ),
                Text('Clasify this Transaction into a particular category', style: TextStyle( fontSize: 16, color: Colors.white ),),
              ]),
          ),
        );
  }
}

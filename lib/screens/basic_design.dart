import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/images/landscape.jpg')),
			 Title(),
			 ButtomSection(),
        ],
      ),
    );
  }
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
		const iconColor = Colors.blue;
    return const Row(
    	mainAxisAlignment: MainAxisAlignment.spaceEvenly,

						children: [
							CustomButton(iconColor: iconColor,icon: Icons.call,text: 'CALL'),
							CustomButton(iconColor: iconColor,icon: Icons.navigation_rounded,text: 'ROUTE',rotate: 45.0),
							CustomButton(iconColor: iconColor,icon: Icons.share,text: 'SHARE'),
						],
    );
  }
}


class CustomButton extends StatelessWidget {
  final MaterialColor iconColor;

  final IconData icon;
	final String text;
	final double? rotate;
	const CustomButton(
	{
    super.key,
    required this.iconColor, required this.icon, required this.text ,this.rotate
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [

			if (rotate == null)...[
			Icon(icon, color: iconColor,),
			] else...[
			RotationTransition(turns: AlwaysStoppedAnimation(rotate!/360),child: Icon(icon, color: iconColor,),),
			],

    	Text(text, style: TextStyle(color: iconColor),)
    ]);
  }
}






class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
    	children: [
    		Expanded(
    		  child: Padding(
    		    padding: EdgeInsets.only(left: 8),
    		    child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Text('Oeschinen Lake Compground',style: TextStyle(height: 1,fontWeight: FontWeight.bold),),
						Text('Kanderseg, Switzerland'),

    		    	],
    		    ),
    		  ),
    		),

    	Padding(
    	  padding: EdgeInsets.all(12.0),
    	  child: Row(children: [
    	  		Icon(Icons.star, color: Colors.red,),
    	  		Text('42')
    	  	],),
    	)
    	],
    );
  }
}

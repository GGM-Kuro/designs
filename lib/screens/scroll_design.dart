import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {

  const ScrollScreen({Key? key}) : super(key: key);

final  boxDecoration = const BoxDecoration(gradient: LinearGradient(
                colors: [Color(0xff75EBCB),Color(0xff4DB4D0)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5,0.5]
            ));




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            body: Container(
                decoration: boxDecoration,
              child: PageView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                      Page1(),
                      Page2()


                  ],
              ),
            )
    );
  }
}


class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [

        // NOTE: Bacground Image
          Background(),

        // NOTE: MainContent
        MainContent()

        ],
    );
  }
}



class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
        return Container(
            color: const Color(0xff4DB4D0),
            child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text('Bienvenido',style: TextStyle(color: Colors.white,fontSize: 40),),
                    ),
                    style: TextButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.lightBlue,
                        shape:  StadiumBorder()
                    ),
                )
            ),
        );
  }
}


class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold);
    return  SafeArea(
        minimum: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              const Text('11°',style: textStyle,),
              const Text('Miercoles',style: textStyle,),
              Expanded(child: Container()),
              const Icon(Icons.keyboard_arrow_up_sharp,color: Colors.white,size: 100)
      ],),
    );
  }
}


class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff4DB4D0),
        alignment: Alignment.topCenter,
        height: double.infinity,
        child: const Image(image: AssetImage('assets/images/scroll-1.png'),)
    );
  }
}

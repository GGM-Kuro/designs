import 'package:designs/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            body: Stack(children: [
                // NOTE: Background
                Background(),
                // NOTE: HomeBody
                _HomeBody(),



            ]),
            bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
        return  const SingleChildScrollView(
            child:Column(children: [
                // NOTE: Tiltles
                PageTitle(),

                // NOTE: Card Table
                CardTable()

            ]) ,
        );
  }
}

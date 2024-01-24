import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  final id;
  final String image;
  const HeroAnimation({super.key, required this.id,required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _gotoDetailsPage(context, id),
      child: Hero(
        tag: 'hero-$id',
        child: Image.asset(
          image,
          width: 150,
        ),
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context, idx) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Center(
          child: Hero(
            tag: 'hero-$idx',
            child: Image.asset('assets/images/under_the_sea.png'),
          ),
        ),
      ),
    ));
  }
}

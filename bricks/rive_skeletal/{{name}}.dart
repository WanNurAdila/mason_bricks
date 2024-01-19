import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class {{name}}RivePage extends StatefulWidget {
  @override
  {{name}}RivePageState createState() =>{{name}} RivePageState();
}

class {{name}}RivePageState extends State<{{name}}RivePage> {
// State machine inputs.

  SMITrigger? _trigger;
  SMIInput<double>? _input; // type can only be either double or bool.

  // late RiveAnimationController _loadingController;

  @override
  void initState() {
    super.initState();
    // _loadingController = SimpleAnimation('Animation 1');
  }

  void _onInit(Artboard art) {
    var controller =
        StateMachineController.fromArtboard(art, '<state machine name>');
    art.addController(controller!);
    _trigger = controller.findSMI('<input name>');
    _input!.value =
        2; // value based on input type above. Will not be use for trigger type.
  }

  //trigger function
  void _hitBump() => _trigger?.fire();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _hitBump,
      child: RiveAnimation.asset(
        '<rive url>',
        onInit: _onInit,
      ),
    );
  }
}

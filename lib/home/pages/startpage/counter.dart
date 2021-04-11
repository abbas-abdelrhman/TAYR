import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../../components/drawer.dart';




class DaysCounter extends StatefulWidget {
  @override
  _DaysCounterState createState() => _DaysCounterState();
}

class _DaysCounterState extends State<DaysCounter> {

  CountDownController _controller = CountDownController();
  bool _isStart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                title: Text('Days Counter'),
                centerTitle: true,
                backgroundColor: const Color(0xFF232F34),
              ),
              drawer: MyDrawer(),
      body: Center(
        child: CircularCountDownTimer(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            duration: 324001,
            fillColor: Colors.amber,
            color: Colors.white,
          controller: _controller,
          backgroundColor: Colors.white54,
          strokeWidth: 10.0,
          strokeCap: StrokeCap.round,
          isTimerTextShown: true,
          autoStart: false,
          isReverse: true,
          onComplete: (){
              Alert(
                  context: context,
                  title: 'You are Hero!',
                style: AlertStyle(
                  isCloseButton: true,
                  isButtonVisible: false,
                  titleStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
                type: AlertType.success
              ).show();
          },
          textStyle: TextStyle(fontSize: 50.0,color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            setState(() {
              if(_isStart){
                _isStart = false;
                _controller.start();
              }else{
                _isStart = true;
                _controller.restart();
              }
            });
          },
          icon: Icon(_isStart ? Icons.cancel : Icons.play_arrow),
          label: Text(_isStart ? 'Restart' : 'Start'),
      ),
    );
  }
}














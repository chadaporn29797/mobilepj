import 'package:flutter/material.dart';
import 'planets.dart';
import 'shooting_star.dart';
import 'star.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with TickerProviderStateMixin {
  AnimationController _bobAnimationController;
  AnimationController _slowAnimationController;
  AnimationController _mdSpeedAnimationController;
  AnimationController _fastAnimationController;
  double currentOpacity = 0;
  Animation<double> starAnimation;

  @override
  initState() {
    super.initState();
    _bobAnimationController = new AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _slowAnimationController = new AnimationController(
      duration: const Duration(milliseconds: 6000),
      vsync: this,
    );
    _mdSpeedAnimationController = new AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _fastAnimationController = new AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _startBobAnimation();
    _slowAnimationController.repeat().orCancel;
    _mdSpeedAnimationController.repeat().orCancel;
    _fastAnimationController.repeat().orCancel;
  }

  _startBobAnimation() {
    var animation =
        new Tween(begin: 0.0, end: 50.0).animate(_bobAnimationController);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _bobAnimationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _bobAnimationController.forward();
      }
    });
    _bobAnimationController.forward();
  }

  @override
  dispose() {
    _slowAnimationController?.dispose();
    _mdSpeedAnimationController?.dispose();
    _fastAnimationController?.dispose();
    _bobAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Color(0xFF2A2138),
        appBar: AppBar(
        title: Text("Tikker Horoscope"),
        backgroundColor: Colors.pink[800],
      ),
        body: new Stack(
          children: <Widget>[
            
            new Star(top: 150.0, left: 150.0),
            new Star(top: 10.0, left: 10.0),
            new Star(top: 83.0, left: 303.0),
            new Star(top: 287.0, left: 287.0),
            new Star(top: 367.0, left: 100.0),
            new Star(top: 447.0, left: 240.0),
            new Star(top: 302.0, left: 160.0),
            new Star(top: 165.0, left: 60.0),
            new Star(top: 468.0, left: 60.0),
            new Star(top: 538.0, left: 150.0),
            new Star(top: 558.0, left: 350.0),
            new Star(top: 608.0, left: 250.0),
            //Shooting Stars
            new ShootingStar(
              top: 280.0,
              left: 10.0,
              animationStep: new CurvedAnimation(
                parent: _mdSpeedAnimationController,
                curve: new Interval(0.0, 0.4),
              ),
            ),
            new ShootingStar(
              top: 100.0,
              left: 10.0,
              animationStep: new CurvedAnimation(
                parent: _mdSpeedAnimationController,
                curve: new Interval(0.0, 0.3),
              ),
            ),
            new ShootingStar(
              top: 470.0,
              left: 10.0,
              animationStep: new CurvedAnimation(
                parent: _mdSpeedAnimationController,
                curve: new Interval(0.0, 0.3),
              ),
            ),
            new ShootingStar(
              top: 670.0,
              left: 10.0,
              animationStep: new CurvedAnimation(
                parent: _mdSpeedAnimationController,
                curve: new Interval(0.0, 0.3),
              ),
            ),
            // Planets
            // Top Left Blue
            new Planet(
              size: 50.0,
              top: 40.0,
              left: 60.0,
              animationController: _fastAnimationController,
              pivotAlignment: FractionalOffset.center,
              gradient: new LinearGradient(
                  colors: [new Color(0xFF00c6fb), new Color(0xFF005bea)]),
            ),
            // Top Right Orange/Yellow
            new Planet(
              size: 45.0,
              top: 150.0,
              left: 250.0,
              pivotAlignment: FractionalOffset.centerLeft,
              animationController: _slowAnimationController,
              gradient: new LinearGradient(
                  colors: [new Color(0xFFf83600), new Color(0xFFf9d423)]),
            ),
            // Pink with Rings / Left
            new Planet(
              size: 65.0,
              top: 245.0,
              left: 45.0,
              pivotAlignment: FractionalOffset.center,
              animationController: _bobAnimationController,
              ringWidth: 10.0,
              color: new Color(0xFFff0844),
              gradient: new LinearGradient(
                  colors: [new Color(0xFFff0844), new Color(0xFFffb199)]),
            ),
            //Purple - bottom left
            new Planet(
              reverse: true,
              size: 65.0,
              top: 365.0,
              left: 115.0,
              pivotAlignment: FractionalOffset.centerRight,
              animationController: _mdSpeedAnimationController,
              color: new Color(0xFFff0844),
              gradient: new LinearGradient(
                  colors: [new Color(0xFFcc208e), new Color(0xFF6713d2)]),
            ),
            new Planet(
              size: 50.0,
              top: 480.0,
              left: 280.0,
              animationController: _fastAnimationController,
              pivotAlignment: FractionalOffset.center,
              gradient: new LinearGradient(
                  colors: [new Color(0xFF00E676), new Color(0xFFB9F6CA)]),
            ),
            new Planet(
              size: 45.0,
              top: 550.0,
              left: 75.0,
              pivotAlignment: FractionalOffset.center,
              animationController: _bobAnimationController,
              ringWidth: 10.0,
              color: new Color(0xFF607D8B),
              gradient: new LinearGradient(
                  colors: [new Color(0xFFff0844), new Color(0xFFffb199)]),
            ),
            new Center(
          child: AnimatedOpacity(
              opacity: currentOpacity,          
              duration: Duration(seconds: 1),   
              child: Image.asset("asset/images/tik12.png"),
            ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {                         // เพิ่ม on pressed
          setState(() {
            currentOpacity = currentOpacity == 0 ? 1 : 0;
          });
        },
        backgroundColor:Color(0xFFff0844),
      ),
      ),
    );
  }
}

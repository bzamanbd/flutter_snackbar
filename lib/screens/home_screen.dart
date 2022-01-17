import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  final String appTitle;
  const HomeScreen({Key? key, required this.appTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _mySnackberKey=GlobalKey<ScaffoldState>();
    void _mySnackberMssg(){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('I am  a Snackbar',
          textScaleFactor: 1.3,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black
          ),
          ),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 3),
          )
        );
    }
    return Scaffold(
      key: _mySnackberKey,
      appBar: AppBar(
        title: Text(appTitle),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _mySnackberMssg();
          }, 
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20
            ),
            child: Text('Click Me',textScaleFactor: 1.3,),
          )
          ),
      ),
    );
  }
}
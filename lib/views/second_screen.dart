import 'package:flutter/material.dart';
import 'package:ot/views/sign_up_view.dart';
import 'login_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: SecondScreen(),
  ));
}



class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Images/OTA.png'),
            fit: BoxFit.cover,
          )
      ),

      child: ButtonTheme(
        height:50,
        minWidth:320,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            const SizedBox(),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: const Text('LOG IN', style: TextStyle(color:Colors.white,fontSize: 15)),
              color :Colors.deepOrange[100],
            ),

            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context){
                  return SignUpView();
                   },
                  ),
                );
              },
              child: const Text('SIGN UP', style: TextStyle(color:Colors.white,fontSize: 15)),
              color :Colors.deepOrange[100],
            ),

          ],
        ),
      ),
    );
  }
}
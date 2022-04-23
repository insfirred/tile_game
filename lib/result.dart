import 'package:flutter/material.dart';
import 'package:tile_game/tileGame.dart';

class popup extends StatefulWidget {
  const popup({ Key? key }) : super(key: key);

  @override
  State<popup> createState() => _popupState();
}

class _popupState extends State<popup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
            width: double.infinity,
            height: 500,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Uh Oh :(    Try Again',textAlign: TextAlign.center,style: TextStyle(fontSize: 40),),
                FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      startOver();
                    });
                    Navigator.pop(context);
                  },
                  child: Text('Play Again',textAlign: TextAlign.center,),
                )
        
              ],
            ),
          ),
          SizedBox(height: 50,)
          ]
        ),
      ),
    );

  }
}

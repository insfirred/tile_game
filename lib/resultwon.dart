import 'package:flutter/material.dart';
import 'package:tile_game/tileGame.dart';

class popupWon extends StatefulWidget {
  const popupWon({ Key? key }) : super(key: key);

  @override
  State<popupWon> createState() => _popupWonState();
}

class _popupWonState extends State<popupWon> {
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
                Text('Yayy  :)  You found 7',textAlign: TextAlign.center,style: TextStyle(fontSize: 40),),
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

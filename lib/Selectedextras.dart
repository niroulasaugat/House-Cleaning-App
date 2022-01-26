import 'package:clean/colorscheme.dart';
import 'package:flutter/material.dart';

class Selectedextras extends StatefulWidget {
  const Selectedextras({ Key? key }) : super(key: key);

  @override
  _SelectedextrasState createState() => _SelectedextrasState();
}

class _SelectedextrasState extends State<Selectedextras> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          extrawidget('fridge','Inside Fridge', true),
          
          extrawidget('organise','organise', false),

          extrawidget('blind','Small Blind', false),

          
        ],
        
      ),
      
    );

    
      
    
  }
  extrawidget(String img, String name, bool isselected){
    return Column(
      children: [
        Stack(
          children: [
          Container(
             padding: EdgeInsets.all(15),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: purple
            ),
            child: Container(
             
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('asset/image/icons/$img.png')
                   ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child:(isselected==true)? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(
                  Icons.check_circle, color: Colors.pink,),
              ),
             
            ):Container(),

          )
          ]
          
        ),
        SizedBox(height: 10,),
        Text(name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),)
      ]
    );
        





      
    
  }
}
import 'package:flutter/material.dart';


class Selected_frequency extends StatefulWidget {
  const Selected_frequency({ Key? key }) : super(key: key);

  @override
  _Selected_frequencyState createState() => _Selected_frequencyState();
}

class _Selected_frequencyState extends State<Selected_frequency> {
  String selected_frequency='Weekly';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap:(){ setfrequency('Weekly');},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           
            width: 100,
            decoration:(selected_frequency=='Weekly')? BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(10)
            ):BoxDecoration(border: Border.all(
              color: Colors.black.withOpacity(0.3), 
            ),
            borderRadius: BorderRadius.circular(10),
            ),
            child: Text('Weekly',textAlign: TextAlign.center,
             style: TextStyle(
              color: (selected_frequency=='Weekly')?Colors.white:Colors.black
            ),)
          ),
        ),

        InkWell(
           onTap:(){ setfrequency('BiWeekly');},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           
            width: 100,
            decoration:(selected_frequency=='BiWeekly')? BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(10)
            ):BoxDecoration(border: Border.all(
              color: Colors.black.withOpacity(0.3), 
            ),
            borderRadius: BorderRadius.circular(10),
            ),
            child: Text('BiWeekly',maxLines: 1,textAlign: TextAlign.center,
             style: TextStyle(
              color: (selected_frequency=='BiWeekly')?Colors.white:Colors.black
            ),)
          ),
        ),


          InkWell( 
             onTap:(){ setfrequency('Monthly');},
           child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           
            width: 100,
            decoration:(selected_frequency=='Monthly')? BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(10)
            ):BoxDecoration(border: Border.all(
              color: Colors.black.withOpacity(0.3), 
            ),
            borderRadius: BorderRadius.circular(10),
            ),
            child: Text('Monthly',textAlign: TextAlign.center,
             style: TextStyle(
              color: (selected_frequency=='Monthly')?Colors.white:Colors.black
            ),)
          ),
        ),
        
      ],

    );
      
    
  }
  void setfrequency(String type){
    setState(() {
      selected_frequency=type;
    });

  }
}
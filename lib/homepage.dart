import 'package:clean/colorscheme.dart';
import 'package:clean/plan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({ Key? key }) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: Column(
        children: [
          SizedBox(height: 70,),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/logo.png'))
                  ),
                  
            ),
            
          ),
          SizedBox(height: 30,),
          Text('Clean Home \n Clean Life',textAlign: TextAlign.center,
           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
           ),
           SizedBox(height: 20,),

           Text('Book Cleans at the Comfort \n of your Home', textAlign: TextAlign.center,
           style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
           ),
           SizedBox(height: 40,),

           Container(
             height: 350,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage('asset/image/splash.png'),
               fit: BoxFit.fill
               
               )
               ),
           ),
           SizedBox(height: 40,),
           
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            
             children: [
               InkWell(
                 onTap: (){
                   openmainpage();
                 },
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(10))
                   ),
                   child: Text('Continue', 
                   style: TextStyle(color: Colors.black.withOpacity(0.5),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold),
                    ),
                 ),
               )
             ],
           )


        ],
      ),
      
    );
  }
  void openmainpage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Myplan()));
  }
}
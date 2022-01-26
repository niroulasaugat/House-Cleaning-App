

import 'package:clean/colorscheme.dart';
import 'package:clean/date.dart';
import 'package:clean/selected.dart';
import 'package:flutter/material.dart';

import 'Selectedextras.dart';

class Myplan extends StatefulWidget {
  const Myplan({ Key? key }) : super(key: key);

  @override
  _MyplanState createState() => _MyplanState();
}

class _MyplanState extends State<Myplan> {
  String Selectedtype='Initial';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Your Plan'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Selected Cleaning',
                   style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 20,),

                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           children: [
                             InkWell(
                               onTap: (){changefilter('Initial');},
                               child: Container(
                                 height: 150,
                                 width: MediaQuery.of(context).size.width*0.4,
                                
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   color: Colors.lightBlue.withOpacity(0.6),
                                   image: DecorationImage(image: AssetImage('asset/image/img1.png'))
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Text('Initial Cleaning',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                             SizedBox(height: 10,),
                             Container(
                               width: 30,
                               height: 30,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Color(0xffededed),
                               ),
                               child: (Selectedtype=='Initial')?
                               Icon(Icons.check_circle, color: Colors.pink,):Container(),
                             )

                            
                   
                           ],
                   
                         ),
                         SizedBox(width: 10,),
                         Column(
                           children: [
                             InkWell(
                                onTap: (){changefilter('Upkeep');},
                               child: Container(
                                 height: 150,
                                 width: MediaQuery.of(context).size.width*0.4,
                                
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   color: Colors.lightBlue.withOpacity(0.6),
                                   image: DecorationImage
                                   (image: AssetImage('asset/image/img2.png'))
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Text('Upkeep Cleaning',
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                             SizedBox(height: 10,),
                             Container(
                               width: 30,
                               height: 30,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Color(0xffededed),
                               ),
                               child: (Selectedtype=='Upkeep')?
                               Icon(Icons.check_circle, color: Colors.pink,):Container(),
                             )
                             
                           ],  
                         ),
                         SizedBox(width: 10,),
                          Column(
                           children: [
                             InkWell(
                                onTap: (){changefilter('intermediate');},
                               child: Container(
                                 height: 150,
                                 width: MediaQuery.of(context).size.width*0.4,
                                
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                                   color: Colors.lightBlue.withOpacity(0.6),
                                   image: DecorationImage(image: AssetImage('asset/image/img1.png'))
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Text('Intermediate Cleaning',
                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                             SizedBox(height: 10,),
                             Container(
                               width: 30,
                               height: 30,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Color(0xffededed),
                               ),
                               child: (Selectedtype=='intermediate')?
                               Icon(Icons.check_circle, color: Colors.pink,):Container(),
                             )
                             
                           ],  
                         ),
                         
                         
                         
                       ],
                     ),
                   ),
                    SizedBox(height: 20,),
                   Text('Selected Frequency', 
                   style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                   SizedBox(height: 20,),
                  Selected_frequency(),
                  SizedBox(height: 25,),
                  Text('Selected Extras', 
                   style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                   SizedBox(height: 20,),
                   Selectedextras(),
                   Expanded(child: Container()),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       InkWell(
                         onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Date()));},
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 70, vertical: 18),
                           decoration: BoxDecoration(
                             color: purple,
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Text('Next',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),),
                         ),
                       )
                     ],
                   )


                  
                   

                ],
                
              ),
            ),
          )
        ],
      )
      
    );
  }
  void changefilter(String filter){
    Selectedtype=filter;
    setState(() {
      
    });
  }
}
import 'package:clean/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Date extends StatefulWidget {
  const Date({ Key? key }) : super(key: key);

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  

  
 
  
  @override
  
  
  
  
  Widget build(BuildContext context) {
   
    CalendarFormat format=CalendarFormat.week;
    
    return Scaffold(
      backgroundColor:purple,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: purple,
        elevation: 0,
        title: Text('Select Date', 
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
      ),
      body: Column(
        children: [
          TableCalendar(
          
            startingDayOfWeek: StartingDayOfWeek.sunday,
            weekendDays: [DateTime.saturday],
            
            
            calendarFormat: format,
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonShowsNext: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
              leftChevronIcon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 15,),
              rightChevronIcon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
              leftChevronMargin: EdgeInsets.only(left: 70),
              rightChevronMargin: EdgeInsets.only(right: 70)
      
            ),
            daysOfWeekStyle:DaysOfWeekStyle(
              weekdayStyle: TextStyle(color: Colors.white),
              weekendStyle: TextStyle(color: Colors.red)
              
            ),
            
            calendarStyle: CalendarStyle(
              defaultTextStyle: TextStyle(color: Colors.white),
            
              weekendTextStyle: TextStyle(color: Colors.red),
            ),
            onFormatChanged: (CalendarFormat _format){
              setState(() {
               format=_format;
              }
              );
            },
            
         
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2000),
            lastDay: DateTime.utc(2030),
            
            ),
            SizedBox(height: 10,),
            Expanded(
              
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), 
                    topRight: Radius.circular(40)),
                    color: Colors.white
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('29 DEC 2021', 
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(height: 20,),
                        Column(
                          children: [
                            daytask('10 Am', 'Suraj Deuba'),
                            SizedBox(height: 15,),
                            daytask('11 Am', 'Sanjeeb Basnet'),
                            SizedBox(height: 15,),
                            daytask('1 Pm', 'Manish Nepal'),

                          ],
                        )

                      ],
                    ),
                  ),
                  
                )

            )
            )
            
          
            
        ],
      ),
      
    );
  }
  Row daytask(String time, String name){
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.2,
          child: Text(time, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Color(0xffdfdeff),
           
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(color: purple, fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Upkeep Cleaning',
                 style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),
                 ),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     Icon(Icons.timer, color: purple,),
                     SizedBox(width: 5,),
                     Text('$time- 5 Pm', style: TextStyle(color: purple, fontWeight: FontWeight.w500),),
                    

                   ],
                 ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Client Rating', 
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.call, color: purple,),
                      SizedBox(width: 10,),
                      Icon(Icons.mail_outline, color: purple,)
                    ],
                    
                  ),
                  
              ],
            ),




          ))
      ],
    );
  }
}
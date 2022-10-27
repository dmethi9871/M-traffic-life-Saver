import 'package:application2_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
class home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('M Traffic Life Saver'),),
      body: Center(
            child: Column(mainAxisAlignment:MainAxisAlignment.center,
             children: <Widget>[

              Container(
                height: 100,
                width: 200,
                decoration:BoxDecoration(
                 borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  
                  padding: const EdgeInsets.all(30.0),
                  
                  child: ElevatedButton(
                    
                    onPressed: (){
                      
                    },
                   child:const Text('SOS'),
                  
                  ),
                ),
              ),
             ],),

      ),

      

         
      
      drawer: mydrawer(),

    );
  }
}
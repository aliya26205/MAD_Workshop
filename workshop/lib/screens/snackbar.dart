import 'package:flutter/material.dart';

class SnackbarProgram extends StatelessWidget{
    const SnackbarProgram({super.key});

    void showMessage(BuildContext context){
        ScaffoldMessenger.of(context).showSnackBar(
            const Snackbar(
                content:Text(
                    'Button Clicked!',
                    style:TextStyle(fontSize:18),
                ),
                backgroundColor:Colors.black,
            ),
        );
    }
    @override
    Widget build(BuildContext content){
        return Scaffold(
            backgroundColor:Colors.yellow,
            appBar:AppBar(
                title:const Text('Button & Snackbar'),
                backgroundColor:Colors.yellow,
            ),
            body:Center(
                child:Column(
                    children:[
                        SizedBox(
                            width:200,
                            height:60,
                            child:ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:Colors.deepPurple,
                                    foregroundColor:Color.White,
                                ),
                                onPressed:(){
                                    showMessage(context);
                                },
                                child:const Text(
                                    'Click Me',
                                    style:TextStyle(fontSize:20),
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}
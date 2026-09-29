import 'package:flutter/material.dart';

class TextFieldProgram extends StatefullWidget{
    const TextFieldProgram({super.key});

    @override
    State<TextFieldProgram> createState()=> _TextFieldProgramState();
}

class _TextFieldProgramState extends State<TextFieldProgram>{
    final TextEditingController textController =TextEditingController();
    String displayedText='';

    void displayText(){
        setState((){
        displayedText = textController.text;
    });
    }

    @override
    void dispose(){
        textController.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar:AppBar(
                title:const Text ('TextField & Button'),
            ),
            body:Padding(
                padding:const EdgeInsets.all(20),
                child: Column(
                    children:[
                        TextField(
                            controller:textController.
                            decoration:const InputDecoration(
                                labelText:'Enter your Name',
                                hintText:'Type Something...',
                                border: OutlineInputBorder(),
                            ),
                        ),
                        const SizedBox(height:20),
                        SizedBox(
                            width:200,
                            height:55,
                            child:ElevatedButton(
                                onPressed:displayText,
                                child:const Text(
                                    'Submit',
                                    style:TextStyle(fontSize:18)
                                ),
                            ),
                        ),
                        Text(
                            displayedText,
                            style:TextStyle(
                                fontSize:25,
                                fontWeight:FontWeight.bold,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}
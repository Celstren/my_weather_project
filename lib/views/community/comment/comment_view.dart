import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/helper/ui/ui_library.dart';

class CommentView extends StatefulWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  State<CommentView> createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {

  int indexComment = 10;
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Scaffold(
          body:

            ////////////////Al parecer un itembuilder no puede estar dentro de un column
            ListView.builder(
                itemCount: indexComment,
                itemBuilder: (BuildContext itemBuilder, context) {

                  return Padding(
                    padding: EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Text("Comentario para el post de Pablo Lopez de hace 15 min"),
                        Container(
                          padding: EdgeInsets.all(6.0),
                          margin:  EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              border: Border.all()
                          ),
                          child: Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenea"),
                        )
                      ],
                    ),
                  );
                }),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Container(
                //color: Colors.black,
                height: 130,
                padding: EdgeInsets.only(right: 0),// serivra para dps
                //margin:  EdgeInsets.only(right: 3.0),
                child:
                    Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Escribe tu comentario aqui:"),

                            Row(
                              children: [
                                Text("Enviar"),
                                IconButton(
                                    icon: Icon(Icons.send),
                                    onPressed: () {
                                    }),
                              ],
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxHeight: 80),//width: 300,
                                child: TextField(
                                  //style: TextStyle(color: Colors.white,),
                                  maxLines: null,
                                  maxLength: 200,
                                  controller: _controller,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      hintText: "Escribir comentario",
                                      fillColor: Colors.blue, filled: true,
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(15),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                      )
                                   ),
                                ),

                          ),
                        ),






                      ],
                    ),


              ),
          ),






        )


    );
  }
}
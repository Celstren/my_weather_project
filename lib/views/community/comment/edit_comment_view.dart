import 'package:flutter/material.dart';
import 'package:my_project/helper/ui/ui_library.dart';


class EditCommentView extends StatefulWidget {
  const EditCommentView({Key? key}) : super(key: key);

  @override
  State<EditCommentView> createState() => _EditCommentViewState();
}

class _EditCommentViewState extends State<EditCommentView> {

  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Padding(
          padding: EdgeInsets.all(6),
          child: Column(
            children: [
              Text("Edita tu comentario del post de Pablo Lopez"),
              Container(
                padding: EdgeInsets.all(6.0),
                margin:  EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all()
                ),
                child: Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenea"),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Actualiza tu comentario aqui:"),

                  Row(
                    children: [
                      Text("Actualizar"),
                      IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                          }),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline)),
                  Text("Eliminar")
                ],
              ),
              ConstrainedBox(
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
            ],
          ),
        ));


  }
}

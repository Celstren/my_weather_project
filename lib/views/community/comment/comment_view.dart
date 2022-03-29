import 'package:flutter/material.dart';
import 'package:my_project/helper/ui/ui_library.dart';

class CommentView extends StatefulWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  State<CommentView> createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {

  int indexComment = 2;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Column(
          children: [

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
                })

          ],
        )


    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_project/helper/ui/ui_library.dart';
import 'package:my_project/views/community/comment/components/action_comment_component.dart';
import 'package:my_project/views/community/comment/components/input_comment_component.dart';
import 'package:my_project/views/community/comment/components/text_comment_component.dart';


class EditCommentView extends StatefulWidget {
  const EditCommentView({Key? key}) : super(key: key);

  @override
  State<EditCommentView> createState() => _EditCommentViewState();
}

class _EditCommentViewState extends State<EditCommentView> {

  var _controller = TextEditingController();
  final titleComment = "Edita tu comentario del Post de Pablo Lopez";
  final textComment = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenea";

  final textAction = "Actualiza tu comentario aqui: ";
  final action = "Actualizar";

  var textController = '';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Column(
          children: [
            TextCommentComponent(titleComment: titleComment,textComment: textComment,),


            ActionCommentComponent(textAction: textAction,action: action),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline)),
                Text("Eliminar")
              ],
            ),
            InputCommentComponent(inputText: textController,)
          ],
        ));


  }
}

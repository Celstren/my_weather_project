import 'package:auto_route/auto_route.dart';
import 'package:my_project/views/auth/create_account/create_account_view.dart';
import 'package:my_project/views/auth/login/login_view.dart';
import 'package:my_project/views/children/create/children_create_view.dart';
import 'package:my_project/views/children/update/children_update_view.dart';
import 'package:my_project/views/community/comment/comment_view.dart';
import 'package:my_project/views/community/comment/edit_comment_view.dart';
import 'package:my_project/views/user/location/user_location_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',        
  routes: <AutoRoute>[        
    AutoRoute(page: LoginView),
    AutoRoute(page: CreateAccountView),
    AutoRoute(page: ChildrenCreateView),
    AutoRoute(page: ChildrenUpdateView),
    AutoRoute(page: UserLocationView),
    AutoRoute(page: UserLocationView),
    AutoRoute(page: CommentView),
    AutoRoute(page: EditCommentView, initial: true),
  ],        
)        
class $AppRouter {} 
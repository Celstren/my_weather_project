import 'package:auto_route/auto_route.dart';
import 'package:my_project/views/auth/create_account/create_account_view.dart';
import 'package:my_project/views/auth/login/login_view.dart';
import 'package:my_project/views/auth/recover_password/recover_password_view.dart';
import 'package:my_project/views/children/create/children_create_view.dart';
import 'package:my_project/views/children/update/children_update_view.dart';
import 'package:my_project/views/user/location/user_location_view.dart';

import '../views/user/post_comunity/create_post/post_comunity_view.dart';
import '../views/user/post_comunity/edit_post/edit_comunity_view.dart';
import '../views/user/uv/user_uv_summary.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',        
  routes: <AutoRoute>[        
    AutoRoute(page: LoginView),        
    AutoRoute(page: CreateAccountView),
    AutoRoute(page: ChildrenCreateView),
    AutoRoute(page: ChildrenUpdateView),
    AutoRoute(page: UserLocationView),
    AutoRoute(page: UserUVSummary),
    AutoRoute(page: PostComunityView),
    AutoRoute(page: EditComunityView)
    AutoRoute(page: RecoverPasswordView, initial: true)
  ],        
)        
class $AppRouter {} 
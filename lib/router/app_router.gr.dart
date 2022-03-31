// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../views/auth/create_account/create_account_view.dart' as _i2;
import '../views/auth/login/login_view.dart' as _i1;
import '../views/children/create/children_create_view.dart' as _i3;
import '../views/children/update/children_update_view.dart' as _i4;
import '../views/user/location/user_location_view.dart' as _i5;
import '../views/user/post_comunity/create_post/post_comunity_view.dart' as _i7;
import '../views/user/post_comunity/edit_post/edit_comunity_view.dart' as _i8;
import '../views/user/uv/user_uv_summary.dart' as _i6;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginView());
    },
    CreateAccountRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CreateAccountView());
    },
    ChildrenCreateRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ChildrenCreateView());
    },
    ChildrenUpdateRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ChildrenUpdateView());
    },
    UserLocationRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserLocationView());
    },
    UserUVSummary.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UserUVSummary());
    },
    PostComunityRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostComunityView());
    },
    EditComunityRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EditComunityView());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(LoginRoute.name, path: '/login-view'),
        _i9.RouteConfig(CreateAccountRoute.name, path: '/create-account-view'),
        _i9.RouteConfig(ChildrenCreateRoute.name,
            path: '/children-create-view'),
        _i9.RouteConfig(ChildrenUpdateRoute.name,
            path: '/children-update-view'),
        _i9.RouteConfig(UserLocationRoute.name, path: '/user-location-view'),
        _i9.RouteConfig(UserUVSummary.name, path: '/user-uv-summary'),
        _i9.RouteConfig(PostComunityRoute.name, path: '/post-comunity-view'),
        _i9.RouteConfig(EditComunityRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-view');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.CreateAccountView]
class CreateAccountRoute extends _i9.PageRouteInfo<void> {
  const CreateAccountRoute()
      : super(CreateAccountRoute.name, path: '/create-account-view');

  static const String name = 'CreateAccountRoute';
}

/// generated route for
/// [_i3.ChildrenCreateView]
class ChildrenCreateRoute extends _i9.PageRouteInfo<void> {
  const ChildrenCreateRoute()
      : super(ChildrenCreateRoute.name, path: '/children-create-view');

  static const String name = 'ChildrenCreateRoute';
}

/// generated route for
/// [_i4.ChildrenUpdateView]
class ChildrenUpdateRoute extends _i9.PageRouteInfo<void> {
  const ChildrenUpdateRoute()
      : super(ChildrenUpdateRoute.name, path: '/children-update-view');

  static const String name = 'ChildrenUpdateRoute';
}

/// generated route for
/// [_i5.UserLocationView]
class UserLocationRoute extends _i9.PageRouteInfo<void> {
  const UserLocationRoute()
      : super(UserLocationRoute.name, path: '/user-location-view');

  static const String name = 'UserLocationRoute';
}

/// generated route for
/// [_i6.UserUVSummary]
class UserUVSummary extends _i9.PageRouteInfo<void> {
  const UserUVSummary() : super(UserUVSummary.name, path: '/user-uv-summary');

  static const String name = 'UserUVSummary';
}

/// generated route for
/// [_i7.PostComunityView]
class PostComunityRoute extends _i9.PageRouteInfo<void> {
  const PostComunityRoute()
      : super(PostComunityRoute.name, path: '/post-comunity-view');

  static const String name = 'PostComunityRoute';
}

/// generated route for
/// [_i8.EditComunityView]
class EditComunityRoute extends _i9.PageRouteInfo<void> {
  const EditComunityRoute() : super(EditComunityRoute.name, path: '/');

  static const String name = 'EditComunityRoute';
}

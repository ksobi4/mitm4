import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/router.gr.dart';
import '../../model/user.dart';

class MemberWidget extends StatelessWidget {
  User user;
  bool isMarkOut;
  MemberWidget({
    Key? key,
    required this.user,
    this.isMarkOut = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(foregroundImage: NetworkImage(user.avatarUrl)),
      trailing: isMarkOut ? const Icon(Icons.star) : null,
      title: Text('${user.name} ${user.lastName}'),
      onTap: () {
        context.router.push(UserPageRoute(user: user));
      },
    );
  }
}

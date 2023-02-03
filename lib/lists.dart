import 'package:flutter/material.dart';

class Lists extends InheritedWidget {
  const Lists({
    Key key,
    @required this.object,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  final dynamic object;

  static Lists of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(Lists) as Lists;
  }

  @override
  bool updateShouldNotify(Lists old) {
    return object != old.object;
  }
}
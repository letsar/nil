import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nil/nil.dart';

void main() {
  testWidgets('nil can be used in a builder', (tester) async {
    await tester.pumpWidget(
      Builder(builder: (_) => nil),
    );
  });
}

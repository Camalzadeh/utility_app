import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:utility_app/app.dart';

void main() {
  testWidgets('Dashboard renders successfully', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: App(),
      ),
    );
    expect(find.text('ANTIGRAVITY'), findsOneWidget);
    expect(find.text('Utility Hub'), findsOneWidget);
  });
}

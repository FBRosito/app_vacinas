import 'package:flutter_test/flutter_test.dart';
import 'package:app_vacinas/main.dart';

void main() {
  testWidgets('App smoke test - renders Sala de Vacinas', (WidgetTester tester) async{
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // verify "Sala de Vacinas" & "Entrar" texts are displayed on FirstScreen.
    expect(find.text('Sala de Vacinas'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });
}

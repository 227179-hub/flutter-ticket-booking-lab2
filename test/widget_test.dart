import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ticket_booking_lab2/main.dart';

void main() {
  testWidgets('home screen displays ticket-booking content and local images',
      (WidgetTester tester) async {
    await tester.pumpWidget(const TicketBookingApp());

    expect(find.text('Book Tickets'), findsOneWidget);
    expect(find.text('Upcoming Flights'), findsOneWidget);
    expect(find.text('Travel inspiration'), findsOneWidget);
    expect(find.byType(Image), findsNWidgets(2));
  });

  testWidgets('bottom navigation changes the visible screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const TicketBookingApp());

    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();

    expect(find.text('Search screen'), findsOneWidget);
  });
}

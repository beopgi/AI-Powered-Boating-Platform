import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('예약')),
      body: const Center(
        child: Text('Booking Page'),
      ),
    );
  }
}
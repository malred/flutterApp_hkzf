// pages/room_detail/index.dart
import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;

  const RoomDetailPage({super.key, required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('roomid: $roomId'),
      ),
    );
  }
}

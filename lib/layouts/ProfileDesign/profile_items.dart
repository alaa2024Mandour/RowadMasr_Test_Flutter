import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget listTileCard ({
  required String title,
  required IconData icon,
} ) => Card(
  color: Colors.grey[700],
  margin: const EdgeInsets.all(16),
  child: ListTile(
    leading: Icon(
      icon,
      color: Colors.white,
    ),
title: Text(
    title,
  style: const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  ),
),

    trailing: const Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.white,
    ),
  ),
);
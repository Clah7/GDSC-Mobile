// Write a dart program to get the current working directory. 

import 'dart:io';

void main() 
{
  String currentDirectory = Directory.current.path;
  print('Current Working Directory: $currentDirectory');
}
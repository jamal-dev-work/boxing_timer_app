import 'package:flutter/material.dart';

class ProviderModel extends ChangeNotifier {
  int rounds = 7;
  int roundMinutes = 3;
  int roundSeconds = 0;
  int restMinutes = 1;
  int restSeconds = 0;


  void incrementRounds() 
  {
    if (rounds < 20) 
    {
      rounds++;
      notifyListeners();
    }
  }

  void decrementRounds() 
  {
    if (rounds > 1) 
    {
      rounds--;
      notifyListeners();
    }
  }

  // void incrementRoundMinutes() 
  // {
  //   roundMinutes++;
  //   notifyListeners();
  
  // }

  // void decrementRoundMinutes() 
  // {
  //   if (roundMinutes > 0) 
  //   {
  //     roundMinutes--;
  //     notifyListeners();
  //   }
  // }

  // void incrementRoundSeconds() 
  // {
    
  //   roundSeconds++;
  //   notifyListeners();
    
  // }

  // void decrementRoundSeconds() 
  // {
  //   if (roundSeconds > 0) 
  //   {
  //     roundSeconds--;
  //     notifyListeners();
  //   }
  // }
}
import 'dart:math';

class Game{
  static int score=0;

  static List<String> choices =["Rock", "Paper", "Scisors"];
  static String ? randomChoice(){
    Random random = new Random();
    int robotChoiceIndex = random.nextInt(3);
    return choices[robotChoiceIndex];
  }
}

class Choice{
  String ? type="";

  static var gameRule ={
    "Rock":{
      "Rock": "It's a Draw",
      "Paper": "You Loose",
      "Scisors": "Rock Wins",
    },
    "Paper":{
      "Rock": "Paper Wins",
      "Paper": "It's a Draw",
      "Scisors": "You Loose",
    },
    "Scisors":{
      "Rock": "You Loose",
      "Paper": "Scissor Wins",
      "Scisors": "It's a Draw",
    },
  };
  Choice(this.type);
}

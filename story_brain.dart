import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'One sunny morning you woke up and started walking to your front door.',
        choice1: 'You want some more sleep before misfortune knocks your door.',
        choice2:
            'Let\'s go and check out this pleasant weather in the garden.'),
    Story(
        storyTitle: 'You move out to the garden, breathe in the fresh air.',
        choice1:
            'I want to relax for some more time here before misfortune breaks into my home.',
        choice2:
            'I am done relaxing, let\'s get back to the home and start doing daily chores.'),
    Story(
        storyTitle:
            'You and your uncle locks yourself in the house, Suddenly a stranger comes asking you for the help. Your uncle straightedly rejects you to proceed to him at any cost.',
        choice1: 'You rush to grab your mobile phone from living room.',
        choice2:
            'You and your uncle together try to block the main door to some extent and start searching for the place to hide.'),
    Story(
        storyTitle:
            'Someone knocks on your door, your Uncle opens it and finds a person asking for some money.',
        choice1: 'You move in to get some bucks to help this poor guy.',
        choice2: 'Duh! Nah, you\'re more poor than this big and bulky guy.'),
    Story(
        storyTitle:
            'Your uncle comes rushing to your main gate telling you to run off and close all the doors.',
        choice1:
            'Ask your uncle to sneak from the viewing hole and see if he has any clue about who this guy is.',
        choice2:
            'You and your uncle together try to block the main door to some extent and start searching for the place to hide.'),
    Story(
        storyTitle: 'This man tries to break into your house with a crowbar.',
        choice1: 'You call 911 and hide in the cupboard',
        choice2:
            'Why are cops needed. I can do it myself, you just run and hide in cupboard.'),
    Story(
        storyTitle:
            'Within 10s, your Uncle recognizes this person pushes you in the house and tries to smack the door. Your uncle tells you to hide.',
        choice1: 'You follow your Uncle and rush into the nearest cupboard.',
        choice2:
            'Hiding in a cupboard? Totally stupid, I will think of my own idea.'),
    Story(
        storyTitle:
            'The man finally breaks in and starts looking for your uncle. You are freaked out but decide to:',
        choice1: 'Stay inside the cupboard and think what else can be done.',
        choice2: 'Move out of the cupboard and try to attack the intruder.'),
    Story(
        storyTitle: 'You are now inside a cupboard.',
        choice1: 'Look out from the hole.',
        choice2:
            'Bend down and hide, once he gets in he may catch you looking at him.'),
    Story(
        storyTitle:
            'Before you could do anything, this man shoots your uncle and finds you. He commands you to stop and surrender to him.',
        choice1: 'You surrender to him and ask why is he doing all this?',
        choice2:
            'You don\'t listen to him and throw a wooden chair near to you to defend and rush out of the place.'),
    Story(
        storyTitle:
            'You see your uncle trying to find a good place to hide. But before he can find it, the intruder finds your uncle, he is behind your uncle pointing his gun next to him.',
        choice1: 'You move out and try to stop him from attacking your Uncle.',
        choice2:
            'You stay in the cupboard and try to figure out what he wants.'),
    Story(
        storyTitle: 'You see him approaching your uncle.',
        choice1:
            'You scream out to warn your uncle about this intruder from inside the cupboard.',
        choice2:
            'You call 911 with your phone and silently inform cops about the incident.'),
    Story(
        storyTitle:
            'He takes out his mask and you realize it’s your Uncle’s friend Shino.',
        choice1: 'You again ask him why did he kill your uncle.',
        choice2: 'You try to grab his gun by moving close to his gun.'),
    Story(
        storyTitle:
            'He shoots your uncle and thrashes you out of the cupboard. You’re shit scared.',
        choice1: 'You surrender yourself to him',
        choice2: 'You directly look into his eyes with frustration'),
    Story(
        storyTitle:
            'While you are informing the police silently about the incident, he shoots your uncle. You are scared and you scream hard, he takes you out and points his gun to you.',
        choice1:
            'You just surrender yourself, start talking to him casually requesting him not to do all this.',
        choice2:
            'You directly ask screaming to him that why did he kill your uncle?'),
    Story(
        storyTitle:
            'He shoots you on your left leg, you fell down and you\’re badly injured.',
        choice1: 'You still try to oppose him.',
        choice2: 'You listen to him and ask him why is he doing this.'),
    Story(
        storyTitle:
            'He tells you, he never wanted to kill your uncle, but he was forced to. He always wanted to be a good friend of your uncle, but they tried to destroy his life by bullying him and killing his niece and then he says now its time for you to die too.',
        choice1:
            'You politely apologize to him for your uncle\'s actions and try to talk to him.',
        choice2:
            'You try to settle him down and buy yourself some time before you could take some action.'),
    Story(
        storyTitle:
            'You talk to him and try to make him understand that killing is not a solution, problems in life are meant to test you for who you really are. He denies and hits you with his gun.',
        choice1:
            'You remain calm and again try to convince him to give up on this.',
        choice2:
            'You try to settle him down and buy yourself some time before you could take some action.'),
    Story(
        storyTitle: 'He shoots you in your head, you’re dead! X_X (0 Points)',
        choice1: 'Restart the Story',
        choice2: ''),
    Story(
        storyTitle:
            'Before he could harm you or do anything, cops come and catch him. You’re safe now. (5 Points)',
        choice1: 'Restart the Story',
        choice2: ''),
    Story(
        storyTitle:
            'After all your valid points he finally understands that what he does is wrong. He goes to the police and surrenders himself. You’re safe now. (10 Points)',
        choice1: 'Restart the Story',
        choice2: '')
  ];

  String getStory() {
    //print(_storyData[0].storyTitle);
    return (_storyData[_storyNumber].storyTitle);
  }

  String getChoice1() {
    return (_storyData[_storyNumber].choice1);
  }

  String getChoice2() {
    return (_storyData[_storyNumber].choice2);
  }

  int _storyNumber = 0;
  bool _checkend = true;
  double story;
  void restart() {
    _storyNumber = 0;
    _checkend = true;
  }

  bool buttonShouldBeVisible() {
    //print('Value of checkend=$_checkend');
    return (_checkend);
  }

  void nextStory(int storyChoice) {
    if (_storyNumber == 0) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //print('changing story number');
        _storyNumber = 3;
      } else
        _storyNumber = 1;
    } else if (_storyNumber == 1) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        _storyNumber = 4;
      } else {
        _storyNumber = 3;
      }
    } else if (_storyNumber == 2) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1)
        _storyNumber = 5;
      else {
        //_checkend = false;
        _storyNumber = 7;
      }
    } else if (_storyNumber == 3) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        _storyNumber = 6;
      } else {
        _storyNumber = 9;
      }
    } else if (_storyNumber == 4) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 6;
      } else {
        //_checkend = false;
        _storyNumber = 7;
      }
    } else if (_storyNumber == 5) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 8;
      } else {
        //_checkend = false;
        _storyNumber = 11;
      }
    } else if (_storyNumber == 6) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 7;
      } else {
        //_checkend = false;
        _storyNumber = 9;
      }
    } else if (_storyNumber == 7) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 10;
      } else {
        //_checkend = false;
        _storyNumber = 9;
      }
    } else if (_storyNumber == 8) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 7;
      } else {
        //_checkend = false;
        _storyNumber = 10;
      }
    } else if (_storyNumber == 9) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 12;
      } else {
        //_checkend = false;
        _storyNumber = 15;
      }
    } else if (_storyNumber == 10) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        // _checkend = false;
        _storyNumber = 9;
      } else {
        //_checkend = false;
        _storyNumber = 13;
      }
    } else if (_storyNumber == 11) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 13;
      } else {
        //_checkend = false;
        _storyNumber = 14;
      }
    } else if (_storyNumber == 12) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 16;
      } else {
        _checkend = false;
        _storyNumber = 18;
      }
    } else if (_storyNumber == 13) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 12;
      } else {
        //_checkend = false;
        _storyNumber = 16;
      }
    } else if (_storyNumber == 14) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        _checkend = false;
        _storyNumber = 17;
      } else {
        //_checkend = false;
        _storyNumber = 16;
      }
    } else if (_storyNumber == 15) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        _checkend = false;
        _storyNumber = 18;
      } else {
        //_checkend = false;
        _storyNumber = 16;
      }
    } else if (_storyNumber == 16) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        //_checkend = false;
        _storyNumber = 17;
      } else {
        _checkend = false;
        _storyNumber = 19;
      }
    } else if (_storyNumber == 17) {
      //print('story number is $_storyNumber and story choice is $storyChoice');
      if (storyChoice == 1) {
        _checkend = false;
        _storyNumber = 20;
      } else {
        //_checkend = false;
        _storyNumber = 19;
      }
    } else if (_storyNumber == 18 || _storyNumber == 19 || _storyNumber == 20) {
      if (storyChoice == 1) {
        restart();
      }
    }
  }
}

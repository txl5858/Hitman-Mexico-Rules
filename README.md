# Hitman-Mexico-Rules git Project

Check out Giant Bomb's video of them playing Hitman by these rules 

http://www.giantbomb.com/videos/holiday-specialtacular-2016-hitsmas/2300-11776/.

  Rule 1 - choose random disguise per target

  Rule 2 - choose random weapon per target

  Rule 3 - choose a random 'wild card' scenario

This Project contains a simple powershell script to help Hitman players randomize their experiences based on Giant Bomb's Mexico Rules. The script bassically generates random choices for the Rules listed above, based on the data of each map's answer file. You can run the script with a specific level's answer file as a parameter or you can run the script without any parameters to have random level chosen. To add other maps, simply create the files in the same format as I have with Paris and Sapienza.

The Project also contains a sample set of .csv files in a directory called mapAnswers. The answer file for a particular map contains the following ...
  
  Line 1 - a list of comma separated disguises
  
  Line 2 - a list of comma separated weapons
  
  Line 3 - wildcard scenarios
  
  Line 4 - the number of targets

Setup and Run the script
------------------------
1) Download/Save the folder 'Hitman GB Mexico Rules' from the this repository

2) Open Windows Powershell as Administrator

3) In powershell, change to the 'Hitman GB Mexico Rules' directory.

4) You may need to enable the execution of powershell scripts on your system. To do so, simply run the below command from Powershell as Administrator. You can skip this step if you have ran powershell scripts before on your machine. 
  
    Set-ExecutionPolicy Unrestricted
  
5) Once you have changed to the Hitman GB Mexico Rules directory and ensured scripts can be executed, you can run this script as shown below. The first example will choose a random level from the answer files found in the mapAnswers directory. The 2nd example will have the script use the level you specify
  
    .\hitmanMexicoRules.ps1
    
    or
    
    .\hitmanMexicoRules.ps1 .\mapAnswers\Sapienza.csv
    
6) Modify/Add files to mapAnswers directory as you like.

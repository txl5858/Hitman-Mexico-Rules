#this script is designed to help Hitman players randomize their experience based on Giant Bomb's 'mexico rules'
#rule 1 - choose random disguise per target
#rule 2 - choose random weapon per target
#rule 2 - choose a random 'wild card'
#run the script with a specific level's answer file as a parameter 
#run without any parameters to have random level chosen

Param(
[string]$inputLevelFile
)

#randomly choose a level if none is specified
if(!$inputLevelFile){
$allLevels = ls .\mapAnswers\
$randomLevel = $allLevels[(Get-random -minimum 0 -maximum @($allLevels).length)]
$levelData = cat .\mapAnswers\$randomLevel
write-host
write-host "Your Random Level is ... "$randomLevel
}

#choose specified level from input parameter
if($inputLevelFile){
$levelData = cat $inputLevelFile
write-host
Write-host "Your Chosen Level is ... "$inputLevelFile
}

#get level data into arrays
$disguises = $levelData[0].split(",")
$weapons = $levelData[1].split(",")
$wildcards = $levelData[2].split(",")
$numberOfTargets = $levelData[3]

for($x=1;$x -le $numberOfTargets;$x++){
#choose and display random disguise
write-host
Write-host -foregroundcolor yellow "Target $x"
write-host -foregroundcolor cyan "Your Random Disguise is ... "$disguises[(Get-random -minimum 0 -maximum $disguises.length)]

#choose and display random weapon
write-host -foregroundcolor green "Your Random Weapon is ... "$weapons[(Get-random -minimum 0 -maximum $weapons.length)]
}

#choose and display a random wild card
write-host
write-host -foregroundcolor magenta "Your Random Wild Card is ... "$wildcards[(Get-random -minimum 0 -maximum $wildcards.length)]
write-host
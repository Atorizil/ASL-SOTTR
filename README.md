# Shadow of the Tomb Raider Load Removal and Auto Splitting

## 260.0

Auto spliiting, starting, stopping and Load Removal for Shadow of the Tomb Raider

## Use

This script can be used in Livesplit by activating it in the split editor once you have chosen `Shadow of the Tomb Raider` as a game

### Manual use
1. In **LiveSplit**, **Right Click** anywhere and click **Edit Layout**
2. **Click +**, **Control, Scriptable Auto Splitter**
3. **Browse** and choose the **.asl  File Downloaded**
4. Make sure you're comparing against **Game Time** for **splits** and **timer**

# Auto Splitting
## Auto Timer Starting
You can choose to start the timer at New Game and or Cozumel (where the 12:30 Penalty is)

The Timer can be started automatically at:
 - New game
 - Cozumel Save (12:30 Penalty)

Some issues:
 - The `Plane Crash Cutscene` is in the **same area** at `New Game` **and after** `Cozumel`
   - This means that the Timer will Auto Start in both of these areas
 - The script only checks if you are in the corresponding area to start the timer
   - This means that the timer will start constantly if you're in that area (So you can't really reset the timer)
   
## Auto Restarting
This script can reset the Timer if you exit to Main Menu at any point during the run. Be careful if you want to use this option because it will stop the Timer without the usual `Update Times` prompt you would normally get. (It will automatically update Best Times). **If the game crashes, it will reset the Timer as you go to the Main Menu.**

## Auto Splitting
There is a `string` in memory that contains the `Current Area`. The script detects when this variable **changes** and then splits if the corresponding setting is active.

`"connector" is the area which connects one area to another. Mainly used in Paititi and Tombs. Experiment with these to see if you want to use them`

The setting names in the script are the actual names of the areas used in the game. They have been organised into more recognisable areas such as Paititi. They also have tooltips that specify where they will split. `It isn't exactly accurate but it gives you an idea of where they will split`

The script isn't linear so you can use these splits to split in any order you want.

### Double Split Prevention
This is recommended because you revisit multiple areas numeorus times and if this option is not selected it will split again when you reach these areas.

You can disable this option but just make sure your route and splits will work with it.

### 100% Autosplitting
This script allows you to Autosplit for each collectible in every area of the game. There are two options for each collectible, **All** or **Each**.
 - **Each** will split for every collectible you pick up
 - **All** will split when you collect all of the given type of collectible in the given area
 
Choosing both will cause it to split twice once all collectibles of the given type and area have been acquired

**Missions, Challenges and Tombs cannot be split for**
 - This is due to them not being near the other collectibles in Memory

## Problems
- Cutscenes don't work for everything:
  - Near the end of Trial of the Eagle, Spike Deaths don't remove time

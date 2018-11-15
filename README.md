# Shadow of the Tomb Raider Load Removal

## 237.7_64

Load Removal for Shadow of the Tomb Raider

## Use
1. In **LiveSplit**, **Right Click** anywhere and click **Edit Layout**
2. **Click +**, **Control, Scriptable Auto Splitter**
3. **Browse** and choose the **.asl  File Downloaded**
4. Make sure you're comparing against **Game Time** for **splits** and **timer**

# **Auto Splitting**
Okay... Let's try to explain this

## Auto Timer Starting
You can choose to start the timer at New Game and or Cozumel (12:30 Penalty)

Some issues: (These shouldn't be too bad)
 - Timer will start in the beginning of Cozumel no matter what if enabled
 - The Plane Crash cutscene has the same area for the beginning of Peruvian Jungle and the beginning of the game. So if the timer isn't running and you go to the cutscene at the beginning of Peruvian Jungle, the timer will start
 - You cannot stop the timer if you're in that area. It will just start again


 I can make the timer start when the game is loading but that won't fully fix it and tbh it wasn't working like that anyway

## Auto Splitting
Okay, so there is a string in memory that contains to current area in game. This string usually looks something like "dd_day_of_the_dead_010".

I think of it as "(Short Area Name)-(Full Area Name)-(Part)"

The script will split **if this string CHANGES to something else**

I have categorized the sub-areas in the respective area (such as Cozumel) so hopefully it is easier to understand. You can always just play around with the options to see which splits you would like to use or just not even use the autosplitting and just use manual splitting.

### Double Split Prevention
I recommend you check this option because this prevents accidental splitting if you go back to an area that has already been split. For Example: in Any% Glitched after San Juan the game will split for Paititi even though you have already been there.

You may actually think this option is useful such as 100% if you wanted to split once you leave a tomb but the route will and splits will have to line up with this.

 - "connector" means the part that connects one area to another. Mainly tombs and paititi use this.

### 100% Autosplitting
**WIP**

This will be for splitting for all / each collectible you collectibe for each region. Basically Region Summary. Problem is Misisons and Challenges aren't in the same memory region and I have to figure out where they store progress... Basically I'm too lazy atm c:

## Problems
- Cutscenes don't work for everything:
  - Near the end of Trial of the Eagle, Spike Deaths don't remove time

<!--
# Todo
-  Make this a Auto Splitter as well as Load Removal
- Settings:
  - Skippable & Unskippable Cutscenes
    - Improve Cutscene Addresses
-->

## For Reference (Version Numbers)
The first number means the game update. So V2 is the next game update after V1 and so on...

The second number after the decimal means the script version for that game update

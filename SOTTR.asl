state("SOTTR")
{
  bool Loading        : 0x14238A0;
  bool Loading2       : 0x1457370;
  // BAD LOADING. They should be updated but it would require a pointer which is actually hard to find :/
  // With the game updating so often, it isn't worth finding it again until updates stop
  bool InCutscene     : 0x145E930; // Doesn't remove Deaths at Trial of the Eagle (After Skip Falling down)
}

init
{
  timer.IsGameTimePaused = false;
}

isLoading
{
    return current.Loading || current.InCutscene || current.Loading2;
}

exit
{
    timer.IsGameTimePaused = true;
}

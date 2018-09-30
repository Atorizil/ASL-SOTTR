state("SOTTR")
{
  bool IsLoading    : 0x228C9A8;
  bool InCutscene   : 0x14198F0; // Skipable or Not Skipable
}

init
{
  timer.IsGameTimePaused = false;
}

isLoading
{
    return current.IsLoading || current.InCutscene;
}

exit
{
    timer.IsGameTimePaused = true;
}

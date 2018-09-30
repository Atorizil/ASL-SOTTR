state("SOTTR")
{
  bool IsLoading    : 0x228C9A8;
  bool IsLoading2   : 0x360C0E8, 0x0, 0x1D0, 0xE0;
  bool InCutscene   : 0x14198F0; // Skipable or Not Skipable
}

init
{
  timer.IsGameTimePaused = false;
}

isLoading
{
    return current.IsLoading || current.InCutscene || current.IsLoading2;
}

exit
{
    timer.IsGameTimePaused = true;
}

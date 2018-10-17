state("SOTTR")
{
  bool Loading    : 0x13E18E0;
  bool Loading2   : 0x14153D0;
  bool InCutscene   : 0x141C9F0;
  // Doesn't remove Deaths at Trial of the Eagle (After Skip Falling down)
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

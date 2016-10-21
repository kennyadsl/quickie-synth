defmodule QuickieSynth.Sound do
  def command(note) do
    "play -qn synth 2 pluck #{note}"
  end

  def run(full_cmd) do
    # split first (cmd) and all other elements (args)
    [cmd| args] = String.split(full_cmd, " ")
    System.cmd(cmd, args)
  end

  def play(note) do
    note |> command |> run
  end
end

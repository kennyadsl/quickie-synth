defmodule QuickieSynth.Composition do
  alias QuickieSynth.Sound

  def play(timing, notes) do
    for note <- String.graphemes(notes), do: spawn_note(timing, note)
  end

  defp spawn_note(timing, note) do
    spawn(Sound, :play, [note])
    :timer.sleep(timing)
  end
end

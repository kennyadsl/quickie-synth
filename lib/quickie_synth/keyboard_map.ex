defmodule QuickieSynth.KeyboardMap do
  # With Elixir you can define the same function with different args.
  # Based on the input given, the right function will be choosen.
  def note_for("z"), do: "G"
  def note_for("x"), do: "A"
  def note_for("c"), do: "B"
  def note_for("v"), do: "C"
  def note_for("b"), do: "D"
  def note_for("n"), do: "E"
  def note_for("m"), do: "F"
  def note_for("comma"), do: "G"
  def note_for("s"), do: "G#"
  def note_for("d"), do: "A#"
  def note_for("g"), do: "C#"
  def note_for("h"), do: "D#"
  def note_for("k"), do: "F#"
  def note_for("l"), do: "G#"
  def note_for(_),   do: :nomap
end

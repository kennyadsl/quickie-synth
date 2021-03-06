defmodule QuickieSynth.Sound do
  def play(note) do
    note |> command |> run
  end

  # Split first and all other elements:
  #
  # Returns a list similar to:
  # ["play", "-qn", "synth", "2", "pluck", note]
  #
  def command(note) do
    String.split("play -qn synth 2 pluck #{note}", " ")
  end

  # This method simply accept/receive a list as argument.
  # Since we are going to use it as cmd, args (first and list of
  # all others list elements) we can use this syntax.
  #
  # This is equivalent to do:
  #
  # defp run(cmd_and_args_list) do
  #   cmd = hd(cmd_and_args_list)   # hd get the head of the list
  #   args = tl(cmd_and_args_list)  # tl get the tail of the list
  #   System.cmd(cmd, args)
  # end
  #
  # or:
  #
  # defp run(cmd_and_args_list)
  #   [cmd| args] = cmd_and_args_list
  #   System.cmd(cmd, args)
  # end
  #
  defp run([cmd| args]) do
    System.cmd(cmd, args)
  end
end

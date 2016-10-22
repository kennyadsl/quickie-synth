defmodule QuickieSynth.UI do
  alias QuickieSynth.Sound
  alias QuickieSynth.KeyboardMap

  def start do
    window = create_window(200, 100)
    loop(window)
  end

  defp loop(window) do
    receive do
      # http://erlang.org/documentation/doc-5.7.5/lib/gs-1.5.11/doc/html/gs_chapter4.html
      # { gs, ObjectId, keypress, Data, [ Keysym, Keycode, Shift, Control | _ ] }
      { :gs, ^window, :keypress, _data, args } ->
        key = hd(args) # hd returns the head of the list (Keysym)
        note = KeyboardMap.note_for("#{key}")
        case note do
          :nomap -> :ok
          _ -> spawn(Sound, :play, [note])
        end
        _ -> :ok
    end
    loop(window)
  end

  defp create_window(width, height) do
    gs_server = :gs.start()
    :gs.create(:window, gs_server, [width: width, height: height, keypress: true, map: true])
  end
end

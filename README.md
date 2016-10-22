# QuickieSynth

Play sounds with Elixr.
Based on [elixir sips](http://elixirsips.com/), episode 062.

## Requirements

Be sure you have [SoX](http://sox.sourceforge.net/sox.html) installed.
On OSX with Homebrew you can just run:

```
brew install sox
```

## Usage

Run

```
$ iex -S mix

> QuickieSynth.Sound.play("C")
> QuickieSynth.Composition.play(500, "AGAGAC")
```

## Test

Run:

```
$ mix test
```

# Breaking into Nerves (Nerves 101, streaming from a RPI camera)

Jacqualine Manzi, Mux

## Her setup

Raspberry Pi 3, Picam camera

## How can Elixir call into FFMPEG

Ports

```elixir
Port.open({:spawn_executable, path_to_ffmpeg}, opts)
```

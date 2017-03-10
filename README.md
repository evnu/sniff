# sniff

Elixir Serial Port NIF.

## Installation and Usage

  1. Add `sniff` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:sniff, "~> 0.1.0"}]
    end
    ```

  **build.bat** documents the required Windows build tools.

## Roadmap

0.1.1

- [ ] Make cross.sh work on Windows 10/cygwin

0.1.0

- [x] Drop mac target until stable serial ports
- [x] Ubuntu 16.04 64 and Windows 10 Pro 64 support
- [x] Extract baud nif branch to its own repo

## Development

- Use clang-format atom package

## Research

- Support udoo neo
- Support beaglebone black
- Support raspberry pi 3 B
- Bypass the 0.1s minimum granularity on posix systems
- Higher baud rates support for posix and win32
- DTR/RTS control and CTS/DSR monitoring
- Unit test 8N1 7E1 7O1 and baud rate setup against a confirmed gauge
- Posix async and Windows overlapped
- Buffer discarding

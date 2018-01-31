defmodule Sniff.TTY do

  #Use dual FTDI USB-Serial adapter ICUSB2322F
  #Connect a null modem cable between them
  #Shorter is #1
  #Larger is #2
  def tty0() do
    case :os.type() do
      {:unix, :darwin} -> "tty.usbserial-AH01F28Y"
      {:unix, :linux} -> "ttyUSB0"
      {:win32, :nt} -> "COM5"
    end
  end

  def tty1() do
    case :os.type() do
      {:unix, :darwin} -> "tty.usbserial-AH01F28Z"
      {:unix, :linux} -> "ttyUSB1"
      {:win32, :nt} -> "COM6"
    end
  end

  def full(tty) do
    case :os.type() do
      {:unix, :darwin} -> "/dev/" <> tty
      {:unix, :linux} -> "/dev/" <> tty
      {:win32, :nt} -> tty
    end
  end
end

ExUnit.start()

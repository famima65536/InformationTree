
require 'socket'

class Client

  def initialize (host_address = nil)
    @address = host_address.nil? ? '127.0.0.1' : host_address
  end


  def connect
    socket = TCPSocket.open(@address, 6532)
    socket.write('test')
    p socket.receive(20)
  end


  def disconnect

  end

  def receive_articles

  end

  def running?
    true
  end

  def set_main(main)
    @main = main
  end

end
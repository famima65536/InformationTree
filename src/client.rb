
require 'socket'

class Client

  def initialize (host_address)
    @address = host_address
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

end
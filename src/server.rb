

require 'socket'

class Server

  def initialize

  end

  def open
    TCPServer.new(nil, 6532) { | server |
      socket = TCPSocket.new(*server, addr, values_at(3,1))
      client = server.accept
      client.write 'test'
      p socket.receive(10)
    }
  end

  def pass_articles

  end

  def close

  end

end
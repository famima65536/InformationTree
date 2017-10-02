

require 'socket'

class Server

  def initialize

  end

  def open
    @socket = TCPServer.new(nil, 6532)
    @socket.accept_nonblock
  end

  def pass_articles

  end

  def close

  end
end
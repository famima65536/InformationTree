

require 'socket'

class Server

  def initialize

  end

  def open
    gs = TCPServer.open(nil, 6532)
    addr = gs.addr
    addr.shift

    loop do
      Thread.start(gs.accept) do | server |
        print(server, " is accepted\n")
        server.write('perfect!')
      end
    end

  end

  def pass_articles

  end

  def close

  end

end
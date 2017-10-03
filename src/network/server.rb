

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
        server.write('hello')
        loop do
          line = server.readline.strip
          case line
            when 'articles'
              pass_articles(server)
            else
              p line # for debug
          end
        end

      end
    end

  end

  # Send articles to client
  # @return [void]
  def pass_articles(server)
    server.write('ARTICLES')
  end

  def close

  end

end
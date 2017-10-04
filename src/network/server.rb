
require 'socket'

class Server

  def initialize

  end

  def open
    gs = TCPServer.open(nil, 6532)
    addr = gs.addr
    addr.shift


    @running = true # run true

    loop do
      Thread.start(gs.accept) do | server |
        print(server, " is accepted\n")
        server.write("HELLO INFORMATION TREE VER 0.1 \r\n")
        loop do
          line = server.readline.strip
          case line
            when 'articles'
              pass_articles(server)
            when 'close'
              server.close

              break
            else
              p line # for debug
          end
        end

        print(server, " is closed\n")

      end

    end

    @running = false # end running server

  end

  # Send articles to client
  # @return [void]
  def pass_articles(server)
    server.write("ARTICLES\r\n")
    @main.get_articles.each { | article |
      server.write("#{article.to_s}\r\n")
    }

  end

  def close

  end

  def running?
    @running
  end

  def set_main(main)
    @main = main
  end

end
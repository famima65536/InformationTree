

require './network/server'
require './network/client'
require './article'
class Main

  def initialize
    @articles = []
  end

  def start
    server = Server.new
    client = Client.new

    server.set_main(self)
    client.set_main(self)

    server.open
    client.connect

    while server.running? or client.running?
      sleep(1)
    end
  end

  def get_articles
    @articles
  end

  def add_article(article)
    @articles << article
  end
end

main = Main.new
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.add_article(Article.new('test', 'this is a test article', 'good for you.'))
main.start

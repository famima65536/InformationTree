
class Article

  def initialize (title, head, body)
    @title = title
    @head  = head
    @body  = body
    @tag   = []
  end

  def add_tag(tag)
    @tag << tag
  end

  def to_s
    "#{@title} : #{@head}"
  end

end
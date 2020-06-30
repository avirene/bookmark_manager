require 'pg'
class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmark;")
    result.map { |bookmark| bookmark['url'] }
  end
end
#add 's' to bookmark on line 5 (iryna)

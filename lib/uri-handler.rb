# Adds basic funtionality to String class that will hopefully
# make URI encoding tasks easier for people other than just myself :)

require 'cgi' # better encoding support than uri - in my opinion anyways
              # if you don't agree, for this project :)

class String
  def uri_encode
    CGI::escape self
  end
  
  def uri_encode!
    self.replace uri_encode
  end
  
  def uri_decode
    CGI::unescape self
  end
  
  def uri_decode!
    self.replace uri_decode
  end
  
  def to_uri
    uri_encode
  end
  
  def to_uri!
    self.replace to_uri
  end
end 
# Adds basic funtionality to String class that will hopefully
# make URI encoding tasks easier for people other than just myself :)

require 'cgi' # better encoding support than uri - in my opinion anyways
              # if you don't agree, fork this project :)

class String
  def uri_encode encoding=nil
    begin
      CGI::escape self
    rescue ArgumentError=>e
      if e.to_s == 'invalid byte sequence in UTF-8'
        encoding = 'binary' if encoding.nil?
        CGI::escape self.force_encoding(encoding)
      else
        raise e
      end
    end
  end
  
  def uri_encode! encoding=nil
    self.replace uri_encode
  end
  
  def uri_decode
    CGI::unescape self
  end
  
  def uri_decode!
    self.replace uri_decode
  end
  
  def to_uri encoding=nil
    uri_encode encoding
  end
  
  def to_uri! encoding=nil
    self.replace to_uri encoding
  end
end 
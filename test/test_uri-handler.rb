require 'helper'

class TestUriHandler < Test::Unit::TestCase
  should 'pass back the encoded string "testing 123" as "testing+123"' do
    assert_equal 'testing+123', 'testing 123'.to_uri
    assert_equal 'testing+123', 'testing 123'.uri_encode
  end
  
  should 'pass back the decoded string "testing+123" as "testing 123"' do
    assert_equal 'testing 123', 'testing+123'.uri_decode
  end
  
  should 'replace the string variable\'s value with the equivalent encoded value' do
    val = 'testing 123'
    val.to_uri!
    
    assert_equal 'testing+123', val
    
    val = 'testing 123'
    val.uri_encode!
    
    assert_equal 'testing+123', val
  end
  
  should 'replace the string varialbe\'s value with the equivalent decoded value' do
    val = 'testing+123'
    val.uri_decode!
    
    assert_equal 'testing 123', val
  end
end

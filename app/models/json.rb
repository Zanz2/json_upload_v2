class Json < ApplicationRecord
  require 'json'
  # app/models/document.rb
  #attr_reader :p_vendor_link
#  attr_reader :protocol_name
  #attr_reader :p_last_modified
  #attr_reader :p_description_link
#  attr_reader :p_number_of_steps
  #attr_reader :p_uri
  attr_accessor :filename
  attr_accessor :content_type
  attr_accessor :file_contents
  attr_accessor :objekt
  attr_accessor :file

def initialize(params = {})
#byebug
super
if( params.has_key?(:content_type) && params.has_key?(:file_contents)&&params.has_key?(:objekt))

  self.filename=params.delete(:filename)
  self.content_type=params.delete(:content_type)
  self.file_contents=params.delete(:file_contents).to_i(2)
  self.objekt=params.delete(:objekt).to_i(2)

  byebug
else
 @file = params.delete(:file)

  #byebug
 #super
  if @file

    @filename = sanitize_filename(@file.original_filename)
    @content_type = @file.content_type
    @file_contents = @file.read
    @objekt=JSON.parse(@file_contents)
    #byebug
    #attr_reader :ime_protokola
    #ime_protokola=objekt["protocol_name"]
    #ustvari(parsan_tekst)
    #@p_vendor_link=@objekt["vendor_link"]
    #byebug
    #@protocol_name=@objekt["protocol_name"]
    #@p_last_modified=@objekt["last_modified"]
    #@p_description_link=@objekt["link"]
    #@p_number_of_steps=o@bjekt["number_of_steps"]
    #@p_uri=objekt["uri"]


  end
end
end
#def ustvari(objekt)

#end

private
  def sanitize_filename(filename)
    # Get only the filename, not the whole path (for IE)
    # Thanks to this article I just found for the tip: http://mattberther.com/2007/10/19/uploading-files-to-a-database-using-rails
    return File.basename(filename)
  end
end

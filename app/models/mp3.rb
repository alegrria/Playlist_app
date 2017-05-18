class Mp3 < ApplicationRecord
  belongs_to :user, optional: true
  require 'csv'
  def self.import(file)
	encoding_options = {
	  :invalid           => :replace, 
	  :undef             => :replace,  
	  :replace           => '',       
	  :universal_newline => true     
	}

  	CSV.foreach(file.path, headers: true, :header_converters => lambda { |h| h.downcase.gsub(' ', '_').encode(Encoding.find('ASCII'), encoding_options) } ) do |row|
  	  Mp3.create! row.to_hash rescue nil
  	end
  end
end

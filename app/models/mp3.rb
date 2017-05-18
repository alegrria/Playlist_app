class Mp3 < ApplicationRecord
  belongs_to :user, optional: true
  require 'csv'
  def self.import(file)
	encoding_options = {
	  :invalid           => :replace,  # Replace invalid byte sequences
	  :undef             => :replace,  # Replace anything not defined in ASCII
	  :replace           => '',        # Use a blank for those replacements
	  :universal_newline => true       # Always break lines with \n
	}

  	CSV.foreach(file.path, headers: true, :header_converters => lambda { |h| h.downcase.gsub(' ', '_').encode(Encoding.find('ASCII'), encoding_options) } ) do |row|
  	  Mp3.create! row.to_hash rescue nil
  	end
  end
end

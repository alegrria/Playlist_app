class Playlist < ApplicationRecord
  belongs_to :user, optional: true
  require 'csv'
  def self.import(file)
  	CSV.foreach(file.path, headers:true) do |row|
  	  Playlist.create! row.to_hash
  	end
  end
end

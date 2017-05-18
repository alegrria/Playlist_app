class User < ApplicationRecord
  has_many :playlists
  has_many :mp3s
  require 'csv'
  def self.import(file)
  	CSV.foreach(file.path, headers:true) do |row|
  	  User.create! row.to_hash
  	end
  end
end

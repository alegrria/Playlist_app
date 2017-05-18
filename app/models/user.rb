class User < ApplicationRecord
  has_many :playlists
  require 'csv'
  def self.import(file)
  	CSV.foreach(file.path, headers:true) do |row|
  	  User.create! row.to_hash
  	end
  end
end

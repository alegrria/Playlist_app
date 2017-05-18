require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  def setup
    @playlist = Playlist.new(id: 1, user_id: 1, name: "Playlist", mp3_ids: "numbers")
  end

  test "should be valid" do
    assert @playlist.valid?
  end
end

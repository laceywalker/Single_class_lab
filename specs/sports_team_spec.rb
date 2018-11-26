require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestStudent < MiniTest::Test


def test_team_name
  new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
  assert_equal("Eyebrows", new_team.get_name)
end












end

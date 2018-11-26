require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestStudent < MiniTest::Test


def test_team_name
  new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
  assert_equal("Eyebrows", new_team.get_name)
end

def test_team_players
  new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
  assert_equal(['Tom', 'Bob','Sarah'], new_team.get_players)
end

def test_team_coach
  new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
  assert_equal("Coach", new_team.get_coach)
end











end

require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestStudent < MiniTest::Test


  def test_team_name
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal("Eyebrows", new_team.name)
  end

  def test_team_players
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal(['Tom', 'Bob','Sarah'], new_team.players)
  end

  def test_team_coach
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal("Coach", new_team.coach)
  end

  def test_set_coach_name
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal("Jeff", new_team.coach=("Jeff"))
  end

  def test_add_player
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    new_team.add_player('Tony')
    assert_equal(['Tom', 'Bob','Sarah','Tony'],new_team.players)
  end







end

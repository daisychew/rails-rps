class ZebraController < ApplicationController
  def rock
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({ :template => "game_templates/play_rock" })
  end

  def paper
    @random_move = ["rock", "paper", "scissors"].sample

    render({ :template => "game_templates/play_paper"})
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample

    render({ :template => "game_templates/play_scissors"})
  end
end

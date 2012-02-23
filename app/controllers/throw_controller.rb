class ThrowController < ApplicationController
before_filter do
  @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
  @computer_throw = @throws.sample
end

def userthrow
    @player_throw = params[:type].to_sym
    if !@throws.include?(@player_throw)
        #halt 403, "You must throw one of the following: #{@throws}"
    end
    #session[:history] must first be declared as a new array,
    #which is done in application_controller.rb
    #append the player's throw and the comp's throw to be
    #printed out in stats later
    session[:history] << @player_throw
    session[:history] << @computer_throw

    if @player_throw == @computer_throw
      session[:history] << "Tie"
      @result = "You tied."
    elsif @computer_throw == @defeat[@player_throw]
      session[:history] << "Win"  
      session[:win] += 1
      @result = "You Won!"
    else
      session[:history] << "Lose"
      session[:lose] += 1
      @result = "You Lost!"
    end
end

def instructions
end

end

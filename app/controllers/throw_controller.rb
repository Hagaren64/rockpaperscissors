class ThrowController < ApplicationController
before_filter do
  @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
  @computer_throw = @throws.sample
end

def userthrow
    @player_throw = params[:type].to_sym
    #if !@throws.include?(@player_throw)
    #    halt 403, "You must throw one of the following: #{@throws}"
    #end
    
    if @player_throw == @computer_throw
      @result = "You tied."
    elsif @computer_throw == @defeat[@player_throw]
      session[:win] += 1
      @result = "You Won!"
    elsif @defeat.include?(@computer_throw)==true   # checks to see if @computer_throw is in @defeat
      session[:lose] += 1
      @result = "You Lost!"
    end
end

def instructions
end

end

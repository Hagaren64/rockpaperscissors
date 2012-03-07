require 'spec_helper'

describe ThrowController do
  #describe "Check number of valid moves" do
  #  it "should be successful" do
  #    @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  #		@size=@defeat.length
  #		if @size == 3
  #		  @result.should == "Less/more than the 3 valid moves"
	#	  end
	#	  response.should be_success
	#  end
  #end
  
  render_views
  
  describe "GET random throw" do
    it "should be successful" do
		@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
		@throws = @defeat.keys
		@userthrow = @throws.sample
  		@comp_throw = @throws.sample
      match 'throw/@userthrow' => 'throw#userthrow'
      response.should be_success
    end
  end

  describe "User play" do
  	it "should display a win, lose, or tie" do
  		@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  		@throws = @defeat.keys
  		#@userthrow = :rock
  		#get :userthrow, :type => @userthrow

      # The following grabs the 'actual' move made by the computer
      # comp_throw is not being controlled here, but the actual
      # controller
  		#@comp_throw = assigns(:computer_throw)
      a=@throws
      i=0
      
  a.each {|x|
      @userthrow=x
      get :userthrow, :type => @userthrow
      @comp_throw = assigns(:computer_throw)
      print @userthrow, " ", i, " -- ", @comp_throw, " "
      i+=1

      if @userthrow==@comp_throw
  			response.should have_selector("h2", :content => "You tied.")
  			print "T // "
      elsif @comp_throw == @defeat[@userthrow] 
  			response.should have_selector("h2", :content => "You Won!")
  			print "W // "
      else
  			response.should have_selector("h2", :content => "You Lost!")
  			print "L // "
    end
  }

  	end
    end
  end
  
  


  
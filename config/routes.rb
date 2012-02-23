RockPaperScissors::Application.routes.draw do
  match 'throw/:type' => 'throw#userthrow'
  
  match 'stats' => 'stats#index'

  match 'clear' => 'clear#index'

  match 'throw' => 'throw#instructions'

  root :to => 'throw#instructions'

end

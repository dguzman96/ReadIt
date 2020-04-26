class WelcomeController < ApplicationController
  def index
    if (params.has_key?(:id) &&
      params.has_key?(:random))
      @id = params['id']
      @random = params[:random]
    end
  end

  #new action
  def sample
    #instance variables
    @controller_message = "Hello from Controller"
  end
end

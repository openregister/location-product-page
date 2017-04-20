class WelcomeController < ApplicationController
  def home
  end

  def locations
    @locations =  OpenRegister.register('country', :beta)._all_records +
                  OpenRegister.register('territory', :beta)._all_records
  end
end

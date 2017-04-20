class WelcomeController < ApplicationController
  def home
  end

  def locations
    @locations =  (OpenRegister.register('country', :beta)._all_records.reject{ |r| r.end_date.present? } +
                  OpenRegister.register('territory', :beta)._all_records.reject{ |r| r.end_date.present? }).sort_by(&:name)
  end
end

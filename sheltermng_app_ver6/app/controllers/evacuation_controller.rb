class EvacuationController < ApplicationController
  def top
    @shelters = Shelter.all
  end

  def map
    @shelters = Shelter.all
  end

  def table
    @shelters = Shelter.all
  end

end

class SequenceControllerController < ApplicationController
  def index
  	@sequence = Sequence.new 
  	@sequence.save
  	render :text => "pixf-st-#{@sequence.id}"
  end
end

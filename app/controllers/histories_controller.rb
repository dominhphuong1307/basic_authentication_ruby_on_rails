class HistoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_history , only: [:show]
  def index
    @histories = History.where(user_id: current_user.id )
  end

  def show

  end

  def load_history
    @history = History.find(params[:id])
  end
end

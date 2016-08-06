helpers do
  def current_round
    Round.find_by_id session[:round_id]
  end
end

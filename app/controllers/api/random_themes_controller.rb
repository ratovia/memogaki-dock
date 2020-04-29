class Api::RandomThemesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @memo = Memo.offset( rand(Memo.count) ).first
  end
end

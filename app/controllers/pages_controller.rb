class PagesController < ApplicationController
  def index
    @request = request
    @uniq_user_ref = rand(100..100000)
  end
end

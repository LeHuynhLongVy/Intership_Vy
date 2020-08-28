class HomeController < ApplicationController
  def newest
  @title = Album.order(created_at: :desc).limit(4).pluck(:title)
  end
end

class PagesController < ApplicationController
  def home
    @title = "Nutrition Simplified"
  end
  def archive
    @title = "Nutrition Simplified -- Archive"
  end
  def news
    @title = "Nutrition Simplified -- News"
  end
  def contact
    @title = "Nutrition Simplified -- Contact Us"
  end
  def videos
    @title = "Nutrition Simplified -- Videos"
  end
end

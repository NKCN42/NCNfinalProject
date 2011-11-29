require 'spec_helper'

describe "LayoutLinks" do
  
    it "should have a home page at '/'" do
      get '/'
      response.should have_selector("title", :content => "Nutrition Simplified")
    end
  
     it "should have a contact page at '/contact'" do
      get '/contact'
      response.should have_selector("title", :content => "Nutrition Simplified -- Contact Us")
    end
    
    it "should have a videos page at '/videos'" do
      get '/videos'
      response.should have_selector("title", :content => "Nutrition Simplified -- Videos")
    end
    
    it "should have a news page at '/news'" do
      get '/news'
      response.should have_selector("title", :content => "Nutrition Simplified -- News")
    end
    
    it "should have a archive page at '/archive'" do
      get '/archive'
      response.should have_selector("title", :content => "Nutrition Simplified -- Archive")
    end
    
    
    
    it "should have the right links on the layout" do
      visit root_path
      response.should have_selector('title', :content => "Nutrition Simplified")
      response.should have_selector('a[href="/videos"]>img')
      response.should have_selector('a[href="/news"]>img')
      response.should have_selector('a[href="/archive"]>img')
      response.should have_selector('a[href="/contact"]>img')
      response.should have_selector('a[href="/"]>img')
    end
end
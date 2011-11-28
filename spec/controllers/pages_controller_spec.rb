require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Nutrition Simplified")
    end
  end

  describe "GET 'archive'" do
    it "returns http success" do
      get 'archive'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'archive'
      response.should have_selector("title", :content => "Nutrition Simplified -- Archive")
    end
  end

  describe "GET 'news'" do
    it "returns http success" do
      get 'news'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'news'
      response.should have_selector("title", :content => "Nutrition Simplified -- News")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Nutrition Simplified -- Contact Us")
    end
  end
  
  describe "GET 'videos'" do
    it "returns http success" do
      get 'videos'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'videos'
      response.should have_selector("title", :content => "Nutrition Simplified -- Videos")
    end
  end

end

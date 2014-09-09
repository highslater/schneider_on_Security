require 'spec_helper'

describe "Static pages" do


  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
       visit '/static_pages/about'
       expect(page).to have_title("Schneier on Security | About Us")
    end

  end


  describe "Blog page" do
    it "should have the content 'Schneier on Security'" do
      visit '/static_pages/blog'
      expect(page).to have_content('Schneier on Security')
    end

   it "should have the right title" do
       visit '/static_pages/blog'
       expect(page).to have_title("Schneier on Security")
    end

    it "should not have a custom page title" do
        visit '/static_pages/blog'
        expect(page).not_to have_title('| Blog')
    end

  end


   describe "Books page" do
    it "should have the content 'Books'" do
      visit '/static_pages/books'
      expect(page).to have_content('Books')
    end

   it "should have the right title" do
       visit '/static_pages/books'
       expect(page).to have_title("Schneier on Security | Books")
    end

  end


  describe "Crypto page" do
    it "should have the content 'Crypto'" do
      visit '/static_pages/crypto'
      expect(page).to have_content('Crypto')
    end

   it "should have the right title" do
       visit '/static_pages/crypto'
       expect(page).to have_title("Schneier on Security | Crypto")
    end

  end


  describe "Essays page" do
    it "should have the content 'Essays'" do
      visit '/static_pages/essays'
      expect(page).to have_content('Essays')
    end

   it "should have the right title" do
       visit '/static_pages/essays'
       expect(page).to have_title("Schneier on Security | Essays")
    end

  end


  describe "News page" do
    it "should have the content 'News'" do
      visit '/static_pages/news'
      expect(page).to have_content('News')
    end

   it "should have the right title" do
       visit '/static_pages/news'
       expect(page).to have_title("Schneier on Security | News")
    end

  end


  describe "Newsletter page" do
    it "should have the content 'Newsletter'" do
      visit '/static_pages/newsletter'
      expect(page).to have_content('Newsletter')
    end

   it "should have the right title" do
       visit '/static_pages/newsletter'
       expect(page).to have_title("Schneier on Security | Newsletter")
    end

  end


  describe "Schedule page" do
    it "should have the content 'Schedule'" do
      visit '/static_pages/schedule'
      expect(page).to have_content('Schedule')
    end

   it "should have the right title" do
       visit '/static_pages/schedule'
       expect(page).to have_title("Schneier on Security | Schedule")
    end

  end


end
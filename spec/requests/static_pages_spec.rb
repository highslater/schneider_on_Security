require 'spec_helper'

describe "Static pages" do


  describe "About page" do
    it "should have the content 'About Me'" do
      visit about_path
      expect(page).to have_content('About Me')
    end

    it "should have the right title" do
       visit about_path
       expect(page).to have_title("Schneier on Security | About Me")
    end

  end


  describe "Blog page" do
    it "should have the content 'Schneier on Security'" do
      visit root_path
      expect(page).to have_content('Schneier on Security')
    end

   it "should have the right title" do
       visit root_path
       expect(page).to have_title("Schneier on Security")
    end

    it "should not have a custom page title" do
        visit root_path
        expect(page).not_to have_title('| Blog')
    end

  end


   describe "Books page" do
    it "should have the content 'Books'" do
      visit books_path
      expect(page).to have_content('Books')
    end

   it "should have the right title" do
       visit books_path
       expect(page).to have_title("Schneier on Security | Books")
    end

  end


  describe "Crypto page" do
    it "should have the content 'Crypto'" do
      visit crypto_path
      expect(page).to have_content('Crypto')
    end

   it "should have the right title" do
       visit crypto_path
       expect(page).to have_title("Schneier on Security | Crypto")
    end

  end


  describe "Essays page" do
    it "should have the content 'Essays'" do
      visit essays_path
      expect(page).to have_content('Essays')
    end

   it "should have the right title" do
       visit essays_path
       expect(page).to have_title("Schneier on Security | Essays")
    end

  end


  describe "News page" do
    it "should have the content 'News'" do
      visit news_path
      expect(page).to have_content('News')
    end

   it "should have the right title" do
       visit news_path
       expect(page).to have_title("Schneier on Security | News")
    end

  end


  describe "Newsletter page" do
    it "should have the content 'Newsletter'" do
      visit newsletter_path
      expect(page).to have_content('Newsletter')
    end

   it "should have the right title" do
       visit newsletter_path
       expect(page).to have_title("Schneier on Security | Newsletter")
    end

  end


  describe "Schedule page" do
    it "should have the content 'Schedule'" do
      visit schedule_path
      expect(page).to have_content('Schedule')
    end

   it "should have the right title" do
       visit schedule_path
       expect(page).to have_title("Schneier on Security | Schedule")
    end

  end


end
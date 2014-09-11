require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "About page" do
    before { visit about_path }
    it { should have_content("About Me") }
    it { should have_title(full_title("About Me")) }
  end

  describe "Blog page" do
    before { visit root_path }
    it { should have_content('Schneier on Security') }
    it { should have_title(full_title("")) }
    it { should_not have_title('| Blog') }
  end

   describe "Books page" do
    before { visit books_path }
    it { should have_content('Books') }
    it { should have_title(full_title("Books")) }
  end

  describe "Crypto page" do
    before { visit crypto_path }
    it { should have_content('Crypto') }
    it { should have_title(full_title("Crypto")) }
  end

  describe "Essays page" do
    before { visit essays_path }
    it { should have_content('Essays') }
    it { should have_title(full_title("Essays")) }
  end

  describe "News page" do
    before { visit news_path }
    it { should have_content('News') }
    it { should have_title(full_title("News")) }
  end

  describe "Newsletter page" do
    before { visit newsletter_path }
    it { should have_content('Newsletter') }
    it { should have_title(full_title("Newsletter")) }
  end

  describe "Schedule page" do
    before { visit schedule_path }
    it { should have_content('Schedule') }
    it { should have_title(full_title("Schedule")) }
   end

end
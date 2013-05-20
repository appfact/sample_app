require 'spec_helper'

describe "Static pages" do

  let(:sample_title) { "Ruby on Rails Tutorial Sample App | " }

  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end
  


  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

      it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => "#{sample_title}Help")
    end
  end

describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "#{sample_title}About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact Page'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the title 'Contact Page'" do
      visit contact_path
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | Contact Page")
    end
  end


end
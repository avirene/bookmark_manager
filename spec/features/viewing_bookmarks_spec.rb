require "pg"

feature "Visiting the Bookmark Manager" do
  scenario "Visiting the index page" do
    visit("/")
    expect(page).to have_content "Bookmark Manager"
  end
end

feature "Viewing bookmarks" do
  scenario "bookmarks are visible" do
    connection = PG.connect(dbname: "bookmark_manager_test")

    # Add the test data
    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.destroyallsoftware.com")
    Bookmark.create(url: "http://www.google.com")
    
    visit ("/bookmarks")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end

feature "Submitting a new bookmark" do
  scenario "Submit a new bookmark" do
    visit("/bookmarks/new")
    fill_in("url", with: "https://www.macmillandictionary.com/")
    click_button "Submit"
    expect(page).to have_content "https://www.macmillandictionary.com/"
  end
end


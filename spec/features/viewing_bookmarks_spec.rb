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
    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES (3, 'http://www.google.com');")
    
    visit ("/bookmarks")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end


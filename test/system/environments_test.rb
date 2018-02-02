require "application_system_test_case"

class EnvironmentsTest < ApplicationSystemTestCase
  setup do
    @environment = environments(:one)
  end

  test "visiting the index" do
    visit environments_url
    assert_selector "h1", text: "Environments"
  end

  test "creating a Environment" do
    visit environments_url
    click_on "New Environment"

    fill_in "Dbhost", with: @environment.dbhost
    fill_in "Dbname", with: @environment.dbname
    fill_in "Dbport", with: @environment.dbport
    fill_in "Dbuser", with: @environment.dbuser
    fill_in "Docker", with: @environment.docker
    fill_in "Name", with: @environment.name
    fill_in "Notes", with: @environment.notes
    fill_in "Project", with: @environment.project_id
    fill_in "Rancher", with: @environment.rancher
    fill_in "Url", with: @environment.url
    click_on "Create Environment"

    assert_text "Environment was successfully created"
    click_on "Back"
  end

  test "updating a Environment" do
    visit environments_url
    click_on "Edit", match: :first

    fill_in "Dbhost", with: @environment.dbhost
    fill_in "Dbname", with: @environment.dbname
    fill_in "Dbport", with: @environment.dbport
    fill_in "Dbuser", with: @environment.dbuser
    fill_in "Docker", with: @environment.docker
    fill_in "Name", with: @environment.name
    fill_in "Notes", with: @environment.notes
    fill_in "Project", with: @environment.project_id
    fill_in "Rancher", with: @environment.rancher
    fill_in "Url", with: @environment.url
    click_on "Update Environment"

    assert_text "Environment was successfully updated"
    click_on "Back"
  end

  test "destroying a Environment" do
    visit environments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Environment was successfully destroyed"
  end
end

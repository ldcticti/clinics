require "application_system_test_case"

class JclinicsTest < ApplicationSystemTestCase
  setup do
    @jclinic = jclinics(:one)
  end

  test "visiting the index" do
    visit jclinics_url
    assert_selector "h1", text: "Jclinics"
  end

  test "creating a Jclinic" do
    visit jclinics_url
    click_on "New Jclinic"

    fill_in "Name", with: @jclinic.name
    fill_in "Phone", with: @jclinic.phone
    click_on "Create Jclinic"

    assert_text "Jclinic was successfully created"
    click_on "Back"
  end

  test "updating a Jclinic" do
    visit jclinics_url
    click_on "Edit", match: :first

    fill_in "Name", with: @jclinic.name
    fill_in "Phone", with: @jclinic.phone
    click_on "Update Jclinic"

    assert_text "Jclinic was successfully updated"
    click_on "Back"
  end

  test "destroying a Jclinic" do
    visit jclinics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jclinic was successfully destroyed"
  end
end

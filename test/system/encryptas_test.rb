require "application_system_test_case"

class EncryptasTest < ApplicationSystemTestCase
  setup do
    @encrypta = encryptas(:one)
  end

  test "visiting the index" do
    visit encryptas_url
    assert_selector "h1", text: "Encryptas"
  end

  test "creating a Encrypta" do
    visit encryptas_url
    click_on "New Encrypta"

    fill_in "Clave", with: @encrypta.clave
    fill_in "Inicial", with: @encrypta.inicial
    click_on "Create Encrypta"

    assert_text "Encrypta was successfully created"
    click_on "Back"
  end

  test "updating a Encrypta" do
    visit encryptas_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @encrypta.clave
    fill_in "Inicial", with: @encrypta.inicial
    click_on "Update Encrypta"

    assert_text "Encrypta was successfully updated"
    click_on "Back"
  end

  test "destroying a Encrypta" do
    visit encryptas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Encrypta was successfully destroyed"
  end
end

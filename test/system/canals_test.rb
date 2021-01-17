require "application_system_test_case"

class CanalsTest < ApplicationSystemTestCase
  setup do
    @canal = canals(:one)
  end

  test "visiting the index" do
    visit canals_url
    assert_selector "h1", text: "Canals"
  end

  test "creating a Canal" do
    visit canals_url
    click_on "New Canal"

    fill_in "Nombre", with: @canal.nombre
    click_on "Create Canal"

    assert_text "Canal fue creado"
    click_on "Back"
  end

  test "updating a Canal" do
    visit canals_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @canal.nombre
    click_on "Update Canal"

    assert_text "Canal fue actualizado"
    click_on "Back"
  end

  test "destroying a Canal" do
    visit canals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Canal fue borrado"
  end
end

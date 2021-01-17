require "application_system_test_case"

class ParsTest < ApplicationSystemTestCase
  setup do
    @par = pars(:one)
  end

  test "visiting the index" do
    visit pars_url
    assert_selector "h1", text: "Pars"
  end

  test "creating a Par" do
    visit pars_url
    click_on "New Par"

    fill_in "Par", with: @par.par
    click_on "Create Par"

    assert_text "Par fue creado"
    click_on "Back"
  end

  test "updating a Par" do
    visit pars_url
    click_on "Edit", match: :first

    fill_in "Par", with: @par.par
    click_on "Update Par"

    assert_text "Par fue actualizado"
    click_on "Back"
  end

  test "destroying a Par" do
    visit pars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Par fue borrado"
  end
end

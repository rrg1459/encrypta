require "application_system_test_case"

class RelojsTest < ApplicationSystemTestCase
  setup do
    @reloj = relojs(:one)
  end

  test "visiting the index" do
    visit relojs_url
    assert_selector "h1", text: "Relojs"
  end

  test "creating a Reloj" do
    visit relojs_url
    click_on "New Reloj"

    fill_in "Minuto", with: @reloj.minuto
    click_on "Create Reloj"

    assert_text "Reloj fue creado"
    click_on "Back"
  end

  test "updating a Reloj" do
    visit relojs_url
    click_on "Edit", match: :first

    fill_in "Minuto", with: @reloj.minuto
    click_on "Update Reloj"

    assert_text "Reloj fue actualizado"
    click_on "Back"
  end

  test "destroying a Reloj" do
    visit relojs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reloj fue borrado"
  end
end

require "application_system_test_case"

class NumerosTest < ApplicationSystemTestCase
  setup do
    @numero = numeros(:one)
  end

  test "visiting the index" do
    visit numeros_url
    assert_selector "h1", text: "Numeros"
  end

  test "creating a Numero" do
    visit numeros_url
    click_on "New Numero"

    fill_in "Fondo", with: @numero.fondo
    fill_in "Inversion", with: @numero.inversion
    fill_in "Porcentaje", with: @numero.porcentaje
    click_on "Create Numero"

    assert_text "Numero fue creado"
    click_on "Back"
  end

  test "updating a Numero" do
    visit numeros_url
    click_on "Edit", match: :first

    fill_in "Fondo", with: @numero.fondo
    fill_in "Inversion", with: @numero.inversion
    fill_in "Porcentaje", with: @numero.porcentaje
    click_on "Update Numero"

    assert_text "Numero fue actualizado"
    click_on "Back"
  end

  test "destroying a Numero" do
    visit numeros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Numero fue borrado"
  end
end

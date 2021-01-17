require "application_system_test_case"

class opcionesTest < ApplicationSystemTestCase
  setup do
    @opcion = opciones(:one)
  end

  test "visiting the index" do
    visit opciones_url
    assert_selector "h1", text: "opciones"
  end

  test "creating a Option" do
    visit opciones_url
    click_on "New Option"

    fill_in "Juliano", with: @opcion.juliano
    fill_in "Porcentaje", with: @opcion.porcentaje
    fill_in "Resultado", with: @opcion.resultado
    click_on "Create Option"

    assert_text "Option fue creado"
    click_on "Back"
  end

  test "updating a Option" do
    visit opciones_url
    click_on "Edit", match: :first

    fill_in "Juliano", with: @opcion.juliano
    fill_in "Porcentaje", with: @opcion.porcentaje
    fill_in "Resultado", with: @opcion.resultado
    click_on "Update Option"

    assert_text "Option fue actualizado"
    click_on "Back"
  end

  test "destroying a Option" do
    visit opciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Option fue borrado"
  end
end

require "application_system_test_case"

class ActaTest < ApplicationSystemTestCase
  setup do
    @actum = acta(:one)
  end

  test "visiting the index" do
    visit acta_url
    assert_selector "h1", text: "Acta"
  end

  test "creating a Actum" do
    visit acta_url
    click_on "New Actum"

    fill_in "Articulo", with: @actum.articulo
    fill_in "Autoridad", with: @actum.autoridad
    fill_in "Dominio", with: @actum.dominio
    fill_in "Fecha", with: @actum.fecha
    fill_in "Juzgado", with: @actum.juzgado
    fill_in "Num acta", with: @actum.num_acta
    fill_in "Pertenece a", with: @actum.pertenece_a
    fill_in "Tipo vehiculo", with: @actum.tipo_vehiculo
    click_on "Create Actum"

    assert_text "Actum was successfully created"
    click_on "Back"
  end

  test "updating a Actum" do
    visit acta_url
    click_on "Edit", match: :first

    fill_in "Articulo", with: @actum.articulo
    fill_in "Autoridad", with: @actum.autoridad
    fill_in "Dominio", with: @actum.dominio
    fill_in "Fecha", with: @actum.fecha
    fill_in "Juzgado", with: @actum.juzgado
    fill_in "Num acta", with: @actum.num_acta
    fill_in "Pertenece a", with: @actum.pertenece_a
    fill_in "Tipo vehiculo", with: @actum.tipo_vehiculo
    click_on "Update Actum"

    assert_text "Actum was successfully updated"
    click_on "Back"
  end

  test "destroying a Actum" do
    visit acta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actum was successfully destroyed"
  end
end

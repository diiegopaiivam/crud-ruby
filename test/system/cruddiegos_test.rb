require "application_system_test_case"

class CruddiegosTest < ApplicationSystemTestCase
  setup do
    @cruddiego = cruddiegos(:one)
  end

  test "visiting the index" do
    visit cruddiegos_url
    assert_selector "h1", text: "Cruddiegos"
  end

  test "creating a Cruddiego" do
    visit cruddiegos_url
    click_on "New Cruddiego"

    fill_in "Email", with: @cruddiego.email
    fill_in "Endereco", with: @cruddiego.endereco
    fill_in "Nome", with: @cruddiego.nome
    fill_in "Telefone", with: @cruddiego.telefone
    fill_in "Whatsapp", with: @cruddiego.whatsapp
    click_on "Create Cruddiego"

    assert_text "Cruddiego was successfully created"
    click_on "Back"
  end

  test "updating a Cruddiego" do
    visit cruddiegos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @cruddiego.email
    fill_in "Endereco", with: @cruddiego.endereco
    fill_in "Nome", with: @cruddiego.nome
    fill_in "Telefone", with: @cruddiego.telefone
    fill_in "Whatsapp", with: @cruddiego.whatsapp
    click_on "Update Cruddiego"

    assert_text "Cruddiego was successfully updated"
    click_on "Back"
  end

  test "destroying a Cruddiego" do
    visit cruddiegos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cruddiego was successfully destroyed"
  end
end

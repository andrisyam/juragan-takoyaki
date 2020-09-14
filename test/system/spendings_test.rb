require "application_system_test_case"

class SpendingsTest < ApplicationSystemTestCase
  setup do
    @spending = spendings(:one)
  end

  test "visiting the index" do
    visit spendings_url
    assert_selector "h1", text: "Spendings"
  end

  test "creating a Spending" do
    visit spendings_url
    click_on "New Spending"

    fill_in "Amount", with: @spending.amount
    fill_in "Description", with: @spending.description
    fill_in "Spending Date", with: @spending.spending_date
    click_on "Create Spending"

    assert_text "Spending was successfully created"
    click_on "Back"
  end

  test "updating a Spending" do
    visit spendings_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @spending.amount
    fill_in "Description", with: @spending.description
    fill_in "Spending Date", with: @spending.spending_date
    click_on "Update Spending"

    assert_text "Spending was successfully updated"
    click_on "Back"
  end

  test "destroying a Spending" do
    visit spendings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spending was successfully destroyed"
  end
end

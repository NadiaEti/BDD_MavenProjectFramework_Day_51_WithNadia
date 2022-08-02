package stepdefinitions;

import configuration.common.WebTestBase;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.HomePage;

public class CategoriesSteps extends WebTestBase {
    HomePage homePage = new HomePage();
    //HomePage homePage;
    @Given("user click on dropdown menu of “Categories“ function")
    public void user_click_on_dropdown_menu_of_categories_function() {
    homePage.clickOnCategories();
    }
    @When("user  click on “grocery“ under the Categories function")
    public void user_click_on_grocery_under_the_categories_function() {
    homePage.clickOnGrocery();
    }
    @Then("the user verify “ grocery” functionality is displayed")
    public void the_user_verify_grocery_functionality_is_displayed() {

    }

}

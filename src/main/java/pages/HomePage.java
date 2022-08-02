package pages;

import configuration.common.WebTestBase;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import static configuration.common.GlobalReUsableMethods.clickOnElement;
import static configuration.common.GlobalReUsableMethods.enterValueOnElement;
import static pageElement.HomePageElement.*;

public class HomePage extends WebTestBase {
    public HomePage(){
        PageFactory.initElements(driver, this);
    }
    @FindBy(xpath = searchBoxWebElement)
    public WebElement searchBox;
    @FindBy(xpath = searchButtonWebElement)
    public WebElement searchButton;
    @FindBy(xpath = verifySearchedProductWebElement)
    public WebElement verifySearchedProduct;


    @FindBy(xpath = huggiesLittleMoversBabyDisposableDiapersWebElement)
    public WebElement huggiesLittleMoversBabyDisposableDiapers;


    @FindBy(xpath = selectQtyWebElement)
    public WebElement selectQty;
    @FindBy(xpath = setQtyWebElement)
    public WebElement setQty;

    //Categories:
    @FindBy(xpath = categoriesWebElement)
    public WebElement categories;
    @FindBy(xpath = targetGroceryWebElement)
    public WebElement grocery;




    // Search Product
    public void searchValidProduct(String productName) {
        //  searchBox.sendKeys("");
        enterValueOnElement(searchBox, productName);
        clickOnElement(searchButton);
    }
    public void enterProductName(String productName){
        enterValueOnElement(searchBox, productName);
    }
    public void clickOnSearchButton(){
        clickOnElement(searchButton);
    }

    //Categories:
    public void targetCategories() {
//WebElement element = driver.findElement(By.xpath(searchBoxWebElement));
//        categories.click();
//        grocery.click();
        clickOnElement(categories);
        clickOnElement(grocery);
    }

public void clickOnCategories(){
    clickOnElement(categories);
}
    public void clickOnGrocery(){
        clickOnElement(grocery);
    }





//    public void selectHuggiesLittleMoversBabyDisposableDiapersWebElement() throws InterruptedException {
//        //scrollDownToElement(huggiesLittleMoversBabyDisposableDiapers);
//        waitFor(5);
//        clickOnElement(huggiesLittleMoversBabyDisposableDiapers);
//        waitFor(5);
//        clickOnElement(selectQty);
//        waitFor(5);
//        clickOnElement(setQty);
//        waitFor(5);
//    }
}

Description: Test for EPAM search button

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|searchInputField   |By.id(new_form_search)                                               |                           
|searchButton       |By.xpath(//button[@class='header-search__button header__icon'])      |
|findButton         |By.xpath(//button[@class='header-search__submit'])                   |
|text               |java                                                                 |

Scenario: Verify EPAM search work as expected
Given I am on page with URL `https://www.epam.com/`
When I click on element located by `<searchButton>`
When I enter `<text>` in field located by `<searchInputField>`
When I click on element located by `<findButton>`
Then text `<text>` exists
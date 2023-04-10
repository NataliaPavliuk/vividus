Description: Test for EPAM hamburger menu

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|hamburgerMenuItems |By.xpath(//*[@class='hamburger-menu__item item--collapsed'])                      |                           
|hamburgerMenuButton|By.xpath(//button[@class='hamburger-menu__button'])                               |
|aboutButton        |By.xpath(//a[contains(text(), 'About')])                                          |
|thirdLevelItems    |By.xpath(//li[contains(@class, 'expanded')]//ul[contains(@class, 'third-level')]) |

Scenario: Verify EPAM search work as expected
Given I am on page with URL `https://www.epam.com/`
When I click on element located by `<hamburgerMenuButton>`
When I change context to element located `By.xpath(//nav[@class='hamburger-menu__dropdown'])`
Then number of elements found by `<hamburgerMenuItems>` is = `4`
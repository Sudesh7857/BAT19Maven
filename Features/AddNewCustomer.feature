Feature:Customer

@regression
Scenario Outline: Add New Customer
 Given User Launch Chrome Browser
  When User open url "https://admin-demo.nopcommerce.com/login"
  And User enter Email as "<email>" and password as "<password>"
  And User click on Login button
  Then User can view Dashboard
 When user click on customers menu
 And user click on customers menu item
 And User click on new add button
 Then User can view add new customer page
 When user enter customer info as "<newEmail>" and "<newPass>" and "<fname>" and
 And user click on save button
 Then User can view confirmation msg "The new customer has been added successfully"
 And close browser
 
 Examples:
 |email |password|newEmail|newPass|fname|lname|gender|comName|adminComment|
 |admin@yourstore.com|admin|raj12@gmail.com|1234|Bali|Raj|Male|ABC|Test1|
 |admin@yourstore.com|admin|radhika13@gmail.com|4567|radha|Patel|Female|XYZ|Test2|



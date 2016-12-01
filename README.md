## Steps on setting free shipping method

### Requirement
Setup a Spree store and implement a free shipping feature. For example, user will get free shipping for order over $150. This free shipping must be able to used together with other promotions, and the order amount should be configurable. So once you think $150 is too much, you can set it to $100.

### Setting steps
1. Log in to the admin management page `/admin`.
2. Click `Configurations` menu and then click `Shipping Methods`
   submenu.
3. Click `New Shipping Method` button for create new shipping method.
4. Fill in the form in accordance with the following requirements and then click `Create` button.
  * Fill in Name field
  * Select Shipping Categories
  * Select Zones
  * Select `Price sack` from CALCULATOR drop-down box
5. Fill in `MINIMAL AMOUNT`、 `NORMAL AMOUNT` and `DISCOUNT AMOUNT` fields under CALCULATOR after page reload, and then click `Update` button
  * MINIMAL AMOUNT: The minimum amount for the products total to trigger the free shipping fee
  * NORMAL AMOUNT为: The amount to discount from the order if the products total is less than the minimal amount
  * DISCOUNT AMOUNT: The amount to discount from the order if the products total is equal to or greater than the minimal amount

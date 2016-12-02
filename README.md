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

## Steps on setting bundle promotion

### Requirement
We would like a bundle promotion that can be applied to order when the order includes specific products. For example, if an order includes products 1 x A and 1 x B then the user get $5.00 off for the order. If the user has 2 x A and 2 x B, then the user will get $10.00 off and so on. But for order has 1 x A and 2 X B, only $5.00 off for the order.

### Setting steps
1. Log in to the admin management page `/admin`.
2. Click `PROMOTIONS` menu and then click `Promotions` submenu.
3. Click `New Promotion` button for create new promotion.
4. Fill in the Name filed and then click `Create` Button.
5. Select `Product(s)` from ADD RULE OF TYPE drop-down box and then click `Add` button.
6. Fill in the Order includes specified product(s) form in accordance with the following requirements and then click `Update` button.
  * Select products which you want to use with this promotion on CHOOSE PRODUCTS field
  * Select `all` from ORDER MUST CONTAIN X AMOUNT OF THESE PRODUCTS drop-down box
7. Select `Create whole-order adjustment` from ADD ACTION OF TYPE drop-down box and then click `Add` button.
8. Select `Bundle Flat Rate` from CALCULATOR drop-down box and then click `Update` button.
9. Fill in CURRENCY field and AMOUNT after page reload.

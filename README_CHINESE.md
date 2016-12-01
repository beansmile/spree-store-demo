## 设置商品总额超过指定金额时免运费的步骤

### 需求
Setup a Spree store and implement a free shipping feature. For example, user will get free shipping for order over $150. This free shipping must be able to used together with other promotions, and the order amount should be configurable. So once you think $150 is too much, you can set it to $100.

### 设置步骤
1. 登录到后台管理 `/admin`
2. 点击菜单 `Configurations`, 然后选择子菜单 `Shipping Methods`
3. 点击 `New Shipping Method`添加新的运输方式
4. 根据以下要求填写表单，然后点击 `Create`按钮
  * 填写Name
  * 勾选Shipping Categories
  * Zones选择改运输方式要覆盖的地区
  * CALCULATOR下拉框选择 `Price sack`
5. 页面刷新后在CALCULATOR下分别填写 `MINIMAL AMOUNT`、 `NORMAL AMOUNT`和 `DISCOUNT AMOUNT`，然后点击 `Update`按钮
  * MINIMAL AMOUNT为商品总价最少等于该值才能享受运费折扣
  * NORMAL AMOUNT为商品总价未达到MINIMAL AMOUNT值时显示的运费
  * DISCOUNT AMOUNT为商品总价达到MINIMAL AMOUNT值显示的运费（免运费则设置为0）

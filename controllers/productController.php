<?php
/**
 * Created by PhpStorm.
 * Date: 08.12.2017
 * Time: 09:50
 */
include_once ROOT . '/models/category.php';
include_once ROOT . '/models/product.php';

class productController {
    public function actionView($productId)
    {

        $categories = array();
        $categories = Category::getCategoriesList();

        $product = Product::getProductById($productId);

        require_once(ROOT . '/views/product/view.php');

        return true;
    }
}
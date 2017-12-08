<?php
/**
 * Created by PhpStorm.
 * Date: 07.12.2017
 * Time: 13:29
 */

/*
 * •	Роутинг должен быть реализован в виде:
Domen/alias/c<id> - Категория товаров  ---> catalogController
Domen/alias/p<id> - Товар --->productController
 */

return array(

    'alias/p([0-9]+)' => 'product/view/$1', // actionView в ProductController  'product/([0-9]+)' => 'product/view/$1',

    'catalog' => 'catalog/index', // actionIndex в CatalogController

    'alias/c([0-9]+)/page-([0-9]+)' => 'catalog/category/$1/$2', // actionCategory в CatalogController в более читабельном формате 'category/([0-9]+)/page-([0-9]+)' => 'catalog/category/$1/$2',
    'alias/c([0-9]+)' => 'catalog/category/$1', // actionCategory в CatalogController в более читабельном формате 'category/([0-9]+)' => 'catalog/category/$1',

    'user/register' => 'user/register',

    '' => 'site/index', // actionIndex в SiteController
);
Тестовое задание:Каталог товаров
=============================


Ограничения:
- Не допускается использование CMS
- Не допускается использование Frameworks

Требования:

    •	Должна быть реализована возможность добавления одного товара в несколько категорий
    •	У одного товара необходимо предусмотреть следующие размеры изображений 110х110, 250х250, 450х450
    •	Должны быть реализованы хлебные крошки в микроформате
    •	На всех страницах должны присутствовать необходимые meta-tags
    •	Реализовать администрирование категорий и товаров
    •	Роутинг должен быть реализован в виде:
                                 Domen/alias/c<id> - Категория товаров
                                 Domen/alias/p<id> - Товар
    


Описание задания:

    Данный модуль по своей сути является стандартным каталогом товаров, с древовидной структурой,
    за исключением того, что у одного товара может быть более одного родителя.
    У товаров и категорий присутствуют превью изображений.
    Также у товара должна присутствовать обычная цена и акционная цена.



Реализация
=================================

Описание проекта:

    Данный проект реализован без использования сторонних CMS/Framewrok
    Построен по принципу MVC что можно будет увидеть по структуре папок


![Главная страница магаизна](https://screenshots.firefoxusercontent.com/images/ec1a2b6f-7bb2-414a-abea-64fbb3f3ef85.png)

   [Видео про работу маршрутизации](https://youtu.be/AVpCHPMhmsA)
   [Видео про рабботу с изображениями в данном проекте](https://www.youtube.com/watch?v=X6BpvPH0Z6Y)
   [короткая видео презентация без звука](https://youtu.be/1t7HjcdJ4mM)

> За визуальную основу взят шаблон Word Press [e-commerce](https://wordpress.org/themes/e-commerce/)
  также в качестве приемлемой визуальной составляющей использован  [Bootstrap 4](http://getbootstrap.com/) использованы шрифты [FontAwesome](http://fontawesome.io/) и самописные стили в Main.CSS

https://youtu.be/1t7HjcdJ4mM

•	У одного товара необходимо предусмотреть следующие размеры изображений 110х110, 250х250, 450х450

   Вызов просмотра изображений разного размера реализован в классе product::РазмерИзображения(['id'] продутка).
Загрузка изображений происходит в adminProductController функция actionUpdate($id) и actionCreate().
При редактировании или создании продукта можно загрузить один файл изображение который будет автоматически изменен до разера
450х450,затем до 250х250 и 110х110.
Размер 110х110 грузиться в карточке товара на главной странице,размер изображения 250х250 также доступен на карточке товара который
путем смены свойств CSS отображается поверх старой фотографии.
Размер 450х450 доступен в описании смаого товара.

•	Роутинг должен быть реализован в виде:
    Domen/alias/c<id> - Категория товаров
    Domen/alias/p<id> - Товар
    -Маршрутизация в каталоге реализована в классе router,а шаблоны запросов и саму маршрутизацию можно прописть в файле config/routes.php
   [Видео про работу маршрутизации](https://youtu.be/AVpCHPMhmsA)

•	На всех страницах должны присутствовать необходимые meta-tags
•	Должны быть реализованы хлебные крошки в микроформате
    При вызове необходимого view из каждого контроллера передаются нужные данные meta-tags + заголовк страницы.
Также эти данные используются для формирования микроданных.
Все функции описаны в заголоовке сайта.

 

•	Реализовать администрирование категорий и товаров
    Реализовано - четыре контроллера которые отвечают за работу с товарами и категориями.
Которые доступны по адресу.
http://wezom.test/admin
Назначение админа доустпно путем редактирования данных в MySql таблице поле role - admin назанчит пользователя админом.



![screenshot of sample](https://screenshots.firefoxusercontent.com/images/7a9dda93-b224-497a-8786-1aff93daa033.png)

-Также у товара должна присутствовать обычная цена и акционная цена.
    Реализовано отдельной позицией у товара - тоображение акционной цены реализовано непосредственно в view файлах.




-одного товара может быть более одного родителя.
    За это отвечает поле categories в таблице товаров.
    Назанчить несколько родителей можно в панели администрирования после создания товара.
![screenshot of sample](https://screenshots.firefoxusercontent.com/images/d0667b7e-a206-41ae-bcd4-edf7743aa3c8.png)

####Вот так выглядит отображение нескольких категорий на товаре 

![screenshot of sample](https://screenshots.firefoxusercontent.com/images/d0038a9c-7da9-4ed2-b260-364aecfe1e6b.png)




===============================================================

Проект по факту состоит из файлов контроллеров по одному на каждую функцию.
Под каждый контроллер+функции - свой вьювер.
Также в проект включёна папка assets в которой лежит Bootstrap,jquery,FontAwesome.otf и т.д..



```php
Название файла               | Содержание файла
-----------------------------|----------------------
assets                       | Папка в которой лежит локальный Bootstrap,datatables,jquery,стили,шрифты
index.php                    | Основной фронт контроллер управления лендингом главной страницы
  models                     | Основная папка с моделями управления пользователями/товарами/заказами и т.д.
adminProductController.php   | Основной файл контроллер с разными дейтсвиями ,основная функция - работа с базой данных товаров
userController.php           | Основной файл контроллер с разными дейтсвиями ,основная функция - проверка пользователей.
cartController.php           | Основной файл контроллер с разными дейтсвиями ,основная функция - редактирование товаров в таблице,а также их добавление.
adminCategoryController.php  | Основной файл контроллер с разными дейтсвиями ,основная функция - редактирование категорий товаров.
adminOrderController.php     | Основной файл контроллер с разными дейтсвиями ,основная функция - редактирование заказов.
cabinetController.php        | Основной файл контроллер с разными дейтсвиями ,основная функция - редактирование товаров в таблице,а также их добавление.
siteController.php           | Основной файл контроллер управляет главной страницей.
   views                     | Папка где находятся все файлы представления для ввода даных из контроллеров
   upload                    | Папка куда загружаются картинки товаров.
   config                    | Папка где лежат файлы конфигурации
layouts                      | Пакпа где лежат файлы представления подвала сайта и шапки сайта
     catalog.sql             | Подготовленный файл базы данных c коментариями каждого поля
Более полная версия описания всех-всех файлов - позже....     
-----------------------------|-----------------------
```



Главная страница состоит из трёх файлов-вьюверов которые грузятся последовательно в контролере main.
header.php + main_view.php + footer.php создают стартовую страницу и соотвественно header.php+footer.php используются для создания 
подвала и шапки сайта. Со стартовой страницы можно сразу попасть на страницу авторизации

![screenshot of sample](https://screenshots.firefoxusercontent.com/images/81cff912-21bd-4edf-a739-cbef9da78b36.png)

Добавление товаров в корзину работает через Ajax(для мгновенного изменения занчка покупок в корзине)+функцию в контроллере.

Другие версии и будущие изменения
-----------

В следующей версии  я надеюсь всё таки реализовать несколько родителей для одоного товара.


Оставляйте пожелания и исправления в ветке коментирования кода.

Для связи - я в [linkedin ](https://www.linkedin.com/in/сергей-обухов-703426140/).
 


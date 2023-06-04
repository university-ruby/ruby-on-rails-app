# Kasianenko Mykyta CS31
Hospital app

## Routes

Sure! Here's the table in Markdown format:

| Prefix | Verb | URI Pattern | Controller#Action |
| ------ | ---- | ----------- | ----------------- |
| info_documentation_index | GET | /info_documentation/index(.:format) | info_documentation#index |
| info_documentation_csv | GET | /info_documentation/csv(.:format) | info_documentation#csv |
| info_documentation_pdf | GET | /info_documentation/pdf(.:format) | info_documentation#pdf |
| info_documentation/pdf_by_clinic_id/:clinic_id | GET | /info_documentation/pdf_by_clinic_id/:clinic_id(.:format) | info_documentation#pdf_by_clinic_id |
| info_documentation/pdf_by_patient_id/:patient_id | GET | /info_documentation/pdf_by_patient_id/:patient_id(.:format) | info_documentation#pdf_by_patient_id |
| new_admin_user_session | GET | /admin/login(.:format) | active_admin/devise/sessions#new |
| admin_user_session | POST | /admin/login(.:format) | active_admin/devise/sessions#create |
| destroy_admin_user_session | DELETE<br>GET | /admin/logout(.:format) | active_admin/devise/sessions#destroy |
| new_admin_user_password | GET | /admin/password/new(.:format) | active_admin/devise/passwords#new |
| edit_admin_user_password | GET | /admin/password/edit(.:format) | active_admin/devise/passwords#edit |
| admin_user_password | PATCH | /admin/password(.:format) | active_admin/devise/passwords#update |
| admin_user_password | PUT | /admin/password(.:format) | active_admin/devise/passwords#update |
| admin_user_password | POST | /admin/password(.:format) | active_admin/devise/passwords#create |
| admin_root | GET | /admin(.:format) | admin/dashboard#index |
| batch_action_admin_admin_users | POST | /admin/admin_users/batch_action(.:format) | admin/admin_users#batch_action |
| admin_admin_users | GET | /admin/admin_users(.:format) | admin/admin_users#index |
| admin_admin_users | POST | /admin/admin_users(.:format) | admin/admin_users#create |
| new_admin_admin_user | GET | /admin/admin_users/new(.:format) | admin/admin_users#new |
| edit_admin_admin_user | GET | /admin/admin_users/:id/edit(.:format) | admin/admin_users#edit |
| admin_admin_user | GET | /admin/admin_users/:id(.:format) | admin/admin_users#show |
| admin_admin_user | PATCH | /admin/admin_users/:id(.:format) | admin/admin_users#update |
| admin_admin_user | PUT | /admin/admin_users/:id(.:format) | admin/admin_users#update |
| admin_admin_user | DELETE | /admin/admin_users/:id(.:format) | admin/admin_users#destroy |
| batch_action_admin_clinics | POST | /admin/clinics/batch_action(.:format) | admin/clinics#batch_action |
| admin_clinics | GET | /admin/clinics(.:format) | admin/clinics#index |
| admin_clinics | POST | /admin/clinics(.:format) | admin/clinics#create |
| new_admin_clinic | GET | /admin/clinics/new(.:format) | admin/clinics#new |
| edit_admin_clinic | GET | /admin/clinics/:id/edit(.:format) | admin/clinics#edit |
| admin_clinic | GET | /admin/clinics/:id(.:format)|



### Labs

- [X] Task 1 -> Rails приложение Больницы
- [X] Task 2 -> Вставити 100 записів у ваші таблиці. У кожній групі по 6 таблиць в 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ. У кожній моделі повинні бути методи на оновлення. В 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ. Зробити по 2 SQL VIEW.
- [X] Task 3 -> Readme file. Зробити CRUD форми под кодну модель.
- [X] Task 4 -> Додати гем Devise до вашого веб застосунку (повинна бути можливість зареєструватись/залогінитись/востановити пароль). Додати тести. Додати CSS/JS.
- [X] Task 5 -> зробити root_page (наповнення яке завгодно але повинне бути посилання на  вхід/реєстрацію). Пропрацювати інформацію про лікарні, бібліотеки (треба додати назву, рік створення)
  створити таблиці як на зображені (кожна таблиця повинна мати пагінацію,  якщо ви бачите поля "number of ... " то так це кількість моделей в асоціації 🙂 не треба створвати поле треба його порахувати) (додати CSS)
  Створити сторінки під кожну модель
  Додати логіку під Пошук та Сортування ----- Створити це за допомогою QueryObject
  Додати тести під кожний елемент
- [X] Task 6 -> зробити rake задачу котра буде парсити сайт 
- [X] Task 7 -> 1) продивитись файл
додати поля (Street Address,City,Zip Code) до бібліотек та (type, city, RatingMortality) у лікарні 
додати файл до додатка (наразі просто у папку його покладіть)
розпарсить файл та зберігти дані за допомогою rake задачі
- [ ] Task 8 -> 1) Додати можливість завантажувати 2 файла (СSV, PDF)
  Вимоги --
  СSV --- в одному файлі всі ваши бібліотеки або ліукарні та читачи/хворі які є в лікарні або бібліотеки (це повинно бути в одному файлі)
  PDF (може бути декілька файлів )---
  інформація про  всі ваши бібліотеки або ліукарні та читачи/хворі які є в лікарні або бібліотеки (це повинно бути в одному файлі)
  інформація про кожну окрему бібліотеку (додаті кольори та зображення)
  інформація про кожного користовача  (додаті кольори)
  додати тести
- [X] Task 9 ->  додати паралельне виконання
  за допомогою Thread
- [X] Task 10 -> Admin Panel
- [X] Task 11 -> Active Storage
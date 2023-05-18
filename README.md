# App

## Commans I have used

```bash
rails generate scaffold clinic title:string address:string
rails generate scaffold department title:string clinic:references
rails generate scaffold doctor name:string surname:string birthday_date:date department:references specialization:references
rails generate scaffold specialization title:string
rails generate scaffold patient name:string surname:string birthday_date:date
rails generate scaffold patient_card doctor_comment:string clinic:references patient:references
```
<h1 align="center">Cafe Management System</h1>

## About The Project

### Purpose of the Project

The Cafe Management System project aims to simplify cafeteria management by providing a comprehensive system that allows cafe owners to effortlessly create, modify, and print invoices, add and manage products, and control user access.

### Project Video

Watch a demo of the project in action:

https://github.com/Bahri-Adem/Cafe-Management-System-Angular-SpringBoot/assets/103949052/1e1fc0f1-26c7-4306-96b7-f46d32899090


## Key Features

### Admin Features

- Admin Dashboard
- Manage Categories (Add, Edit, Filter Products)
- Manage Products (Add, Edit, Delete, Filter Products)
- Manage Orders (Add)
- Manage Bills (View Bill Details, Download Bill, Cancel Bill, Filter Products)
- Manage Users (Ping User, Filter User)
- Change Password

### User Features

- Login & Sign Up
- User Dashboard
- Manage Orders (Add)
- Manage Bills (View Bill Details, Download Bill, Cancel Bill, Filter Products)
- Update Profile
- Change Password

### Built With

- Java (Spring Boot - Rest API)[2.7.6]
- Angular[12.2.18]
- MySQL Database[8.0.34]

## Getting Started

### Angular Part

To run the Angular part, follow these steps:

1. Open your terminal in VS Code.
2. Set the `NODE_OPTIONS` environment variable with the command:
$env:NODE_OPTIONS = "--openssl-legacy-provider"
3. Start the Angular development server:
ng s
4. Access the application in your web browser at [localhost:4200](http://localhost:4200).

### Spring Boot Part

To run the Spring Boot part, make sure it is accessible at [localhost:8082](http://localhost:8082). You can use [Postman API Platform](https://www.apidog.com/utm_source=google_search&utm_medium=ads_sa&utm_campaign=18544428894&utm_content=141031187734&utm_term=postman&gclid=CjwKCAiAxP2eBhBiEiwA5puhNTsU_tGODxYHjQKxChzH-PERviJ2AKbDvDT9I0KBzHALZ9RM16JOFBoCv3sQAvD_BwE) to interact with the backend API. Follow these steps:

1. Sign up as a user.
2. Log in to obtain a user token, which is required for certain features.
3. Some features are accessible only with admin roles. Check the relevant service implementation in the [ServiceImpl folder]([https://github.com/Bahri-Adem/Cafe-Management-System-Angular-SpringBoot](https://github.com/Bahri-Adem/Cafe-Management-System-Angular-SpringBoot/blob/main/Backend/src/main/java/com/inn/cafe/serviceImpl)) to determine which functions require admin privileges.

## Note

This project was created for educational purposes and was developed based on the content of an educational course available on YouTube.

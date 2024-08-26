# PayPal Payment Integration in Spring Boot MVC

This project demonstrates how to integrate PayPal payment functionality into a Spring Boot MVC application using Thymeleaf for the front end. The application allows users to create and execute payments through PayPal, with a user-friendly interface built using HTML, CSS, JavaScript, and Bootstrap.

## Features

- **Create Payment:** Users can initiate a payment with a specified amount, currency, and payment method.
- **Execute Payment:** After approval on PayPal's site, the payment is finalized within the application.
- **User Interface:** Responsive and interactive UI built with Thymeleaf, HTML, CSS, JavaScript, and Bootstrap.

## Technologies Used

- **Spring Boot:** Java-based framework for building web applications.
- **Thymeleaf:** Server-side template engine for rendering HTML.
- **Bootstrap:** CSS framework for responsive and modern web design.
- **PayPal REST API:** API for processing payments.
- **Maven:** Dependency management and build tool.

## Getting Started

### Prerequisites

- Java 11 or higher
- Maven 3.6 or higher
- A PayPal Developer account (to get your client ID and client secret)

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Alex1-ai/spring-boot-paypal.git
   cd spring-boot-paypal
   ```

2. **Set up PayPal credentials:**

   Create a `src/main/resources/application.properties` file and add your PayPal credentials:

   ```properties
   paypal.client-id=your-client-id
   paypal.client-secret=your-client-secret
   paypal.mode=sandbox  # or live for production
   ```

   Alternatively, if you prefer `application.yml`:

   ```yaml
   paypal:
     client-id: your-client-id
     client-secret: your-client-secret
     mode: sandbox  # or live for production
   ```

3. **Build the project:**

   ```bash
   mvn clean install
   ```

4. **Run the application:**

   ```bash
   mvn spring-boot:run
   ```

### Project Structure

```bash
src
├── main
│   ├── java
│   │   └── com
│   │       └── chidi
│   │           └── payment
│   │               ├── config         # Configuration class for PayPal API context
│   │               ├── controller     # Controllers handling web requests
│   │               └── paypal         # PayPal service class for creating and executing payments
│   ├── resources
│   │   ├── templates                  # Thymeleaf templates (HTML files)
│   │   ├── static                     # Static resources (CSS, JS, images)
│   │   └── application.properties     # Application configuration (PayPal credentials)
└── test
    └── java
        └── com
            └── chidi
                └── payment            # Unit and integration tests
```

### User Interface

- **Home Page:** A landing page with a brief introduction and a button to initiate a payment.
- **Payment Page:** Users can specify payment details such as amount and currency.
- **Success Page:** Displays payment success details after the transaction is completed.
- **Cancel Page:** Informs the user that the payment was canceled.

### Endpoints

- **Home Page:**  
  `GET /`  
  Displays the home page where users can start the payment process.

- **Create Payment:**  
  `POST /payment/create`  
  Initiates a PayPal payment based on user input.

- **Execute Payment:**  
  `GET /payment/execute`  
  Completes the payment after PayPal redirects back to the application.

### Testing the Integration

To test the integration:

1. Start the application locally.
2. Navigate to `http://localhost:8080` in your browser.
3. Follow the on-screen instructions to create and execute a payment.



## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

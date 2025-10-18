Lojinha API Automation: This repository contains the automation of several REST API tests for a software called Lojinha. The subtopics below describe some decisions made during the project's structuring.

Technologies Used: Java, JUnit, RestAssured, Maven

Automated Tests: Tests to validate equivalence partitions related to the product value in Lojinha, which are directly tied to the business rule stating that the product value must be between R$ 0.01 and R$ 7,000.00.

General Notes
• 	We always use the  annotation to capture the token that will be used later in the test methods.
• 	We store the data sent to the API using POJO classes.
• 	We create initial data using a Data Factory class to simplify data creation and management.
• 	This project uses JUnit 5, which allows us to use the  annotation to provide Portuguese descriptions for our tests.

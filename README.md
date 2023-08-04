
CodeAcademyTransfer

1st level final assignment

Task description

You will need to create a simple app, where you can transfer balance between users. It should consist of 2 scenes - registration/login scene and home scene, where you can make transfers. Although we did registration/login a few times already, you should not blindly copy it from previous applications - we will ask questions during our 1 on 1 discussions about the implementation, so you need to understand why is it the way it is

There are no strict requirements about styling/structure for this assignment, since we are begginners and we are already overwhelmed about all the different stuff, but we should have that in mind and we will definitely take that into account when we will be reviewing your applications (in other words, we will not penalise you for missing cleanliness, but will give you a plus if you do it right)

Before sending your application to us, please try to test it as thoroughly as possible, check if there are no crashes, strange things or something like that

Your functions and variables naming should be easily understandable and readable. Also, think if you can use helper classes to handle all the validation logic etc. - take a look into our manager classes that we did in lectures. Do not forget about accessibility modifiers too (private). Use vars and lets appropriately

Functionality

User should be able to register and login
When user sucessfully registers/logins - he is moved to home scene
In home scene, user is greeted with a label at the top of the screen "Hello, username!"
In home scene we can see user balance (in a label), two input fields, transfer button and logout button (in total, 5 UI elements)
In those input fields user can enter how much money he is going to transfer and for which user
Transfer button is for initiating transfer action (it takes values from input fields, validates them and shows a success or error alert)
After transfer, show a generic alert with information that transfer was sucessful. If any errors occured (for example, tried to transfer more than you have) - show same alert but with error message
When transfer is done, transferred amount should reflect in both sender and receiver accounts
If user presses on logout button, he should be routed back to login screen
Keyboard should be without auto-correct and auto-capitalisation (you can select that in Interface Builder, try to google if you cannot find it). You can have hardcoded user list (like we had with questions in the lectures), so you would not to need to register them everytime

Validation

Registration

Username should be at least 8 symbols and must not be already registered
Password should be at least 8 symbols
Transfers

You cannot transfer negative (or zero) amount
You cannot transfer more than you have
Keyboard for amount textfield should be numeric
You cannot transfer to a user that does not exist
Evaluation

For this assignment, we will basically only check if all functionality is fulfilled. We will give you comments about all the other things that are not mandatory for this task, but we will not take them into account when giving you a grade

Evaluation

Deadline: 2023-08-08

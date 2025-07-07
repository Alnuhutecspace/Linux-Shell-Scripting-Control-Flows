# Linux-Shell-Scripting-Control-Flows 

Every programming language that is to be taken seriously needs control structures such as conditionals, loops, and multi-way branches, and thus they may not be absent from the shell, either. As usual in shell programming, everything seems a bit “roundabout” and
possibly confusing to connoisseurs of “real” programming languages, but somehow it manages to follow its own perverse logic. 

## Control Flow in Shell Scripting 

Control flow statement are the backbone of making decisions in programming. In scripting, these statements let your scripts decide what to do or how to proceed based on conditions, loops, or user inputs. 

Bash and other shell interpreters provides control flow statements like 

- **if-else** 

- **for** loops 

- **while loops** and 

- **case** statements to control the flow of execution in your scripts. 

## What is Control Flow? 

Control flow refers to the order in which the computer executes statements in a script. It dictates how a program moves from one instruction to another, often based on conditions or logic. Essentially, it's the mechanism that allows programs to go beyond a simple, sequential execution and make decisions, repeat tasks, and handle different inputs. 

Let's examine an **if-else** statement in Bash to understand how it makes decision based on user inputs. 

## The Task: 

1. Our script asks for a number and then tells us if that number is positive, negative, or zero.

- Create a file and name.

![Created and Named](./img/01.File%20Created%20and%20Named%20.png) 

- File the entire script. 

![File Entire Script](./img/02.%20File%20Entire%20Script.png) 

- Save entire script. 

![Save Entire Script](./img/03.%20Save%20Entire%20Script.png) 

But let start executing the script gradually to understand the entire code from start to finish. 

2. Put the code below and execute the script to experience what happens.  

![Single Line Code](./img/04%20Single%20Line%20Code.png) 

Their is a neeed to give execute permission to the owner before the code can run successfully. The code execute and prompt response on the terminal as shown above.

![Accept Input](./img/05%20Accept%20Input.png) 

Running the entire script 

![Run Entire Script](./img/06.%20Run%20Entire%20Script.png) 

## The Script Breakdown: 

- #!/bin/bash: This line is the shebang , it tells the system this script should be run with **Bash** interpreter. 

- **read -p "Enter a number: ":** This coomand asks you the user, to enter a number. The **-p** option or parameter allows us to display a prompt message on the screen when you execute the script.

3. Execute the script 

Notice that when you execute the script, it just ask to **Enter a number:**. Even when the number is enter, it takes the number. but it can not be visibly see what it does with the number. This is because **read** command in the script has its own wayof taking inputs from the user, and storing the value into a variable passed to the **read** command.

Bash waits for the user to enter something into the command line **(stdin)**. Once the user presses enter, **read** assigns the input to the variable. Update the code to the below and execute; 

## Update Shell Script Code 1

![Updated Script Code](./img/07.%20Updated%20Script%20Code.png) 

Notice how we have now used **echo** to return back to the screen **(stdout)** the value stored in the **$num** variable. 

![Updated Script Output](./img/08.%20Updated%20Script%20Output.png) 

## if Statement 

The if statement in Bash scripts allows you to execute command based on conditions. The basic syntax is: 

![if Statement](./img/09.%20if%20Statement.png) 

- **if:** This keyword starts the conditional statement. 

- **[condition]** The condition to evaluate. Brackets [] are used to enclose thecondition being tested. 

- **then:** If the condition is true, execute the commands that follow this keyword. 

- **fi** Ends the if statement. It's basically **if** spelled backward, indicating the conclusion of the conditional block. 

From the command above it shows that if the value in **$num** is greater then 0, then most likely you have enter a positive number. 

Notice the keyword **-gt** in the condition, these are called **operators** that are used with the condition block to perform numeric comparison between values. 

![if Code Run](./img/10.%20if%20Code%20Run.png) 

## elif Statement 

We move on to the **elif** part of control flow in Bash scripts, elif stands for **"elif,"** allowing you to test additional conditions if the previous **if** conditions were not met. It helps you add more layers of decision-making to your script. 

- **elif:** This keyboard is used right after an **if** or another **elif** block. It allows you to specify an alternative condition to test if previous conditions were false. 

- **[condition 2]:** The new condition you want to evaluate. Like the if statement, this condition is enclosed in square bracket **[]**. 

- **then:** If the **elif** condition is true, execute the commands that follow this keyword. 

![elif Statement](./img/11.%20elif%20Statement.png) 

![elif Code Execute](./img/12.%20elif%20Code%20Executed.png)


**In this updated version of the script:** 

- The **if [$num -gt 0]; then** part checks if **num** is greater than 0 and prints **"The number is positive."** if true. 

- If the first condition isn't met (i.e., the number is not greater than 0), the **elif [$num -lt 0]; then** checks if the num is less than 0. If this condition is true, it prints. **"The is number is negative."** 

- This way the script can differentiate between positive and negative numbers, providing specific feedback based on the value of **num** 

## Loops 

Loop are fundamental constructs that allow us to repeat a set of commands multiple times. Loops in shell scripting allow for the repeated execution of a block of commands. This is useful for automating repetitive tasks, processing lists of items, or performing actions based on a specific condition. 

Imagine having to perform a task, like sending a greeting message to each of your friends by name. Without loops you did have a separate command for each friend, which is niot only tedious but inefficient. 

Somemreal world scenerios where loops are inevitable are; 

**Batch Processing:** Suppose you have a folder full of photos you want to resize or edit in a way. Insteading of editing each photo individually,a loop can automate this task, applying the same code to each photo in the folder. 

**Data Analysis:** If you are analysing data, there might be a need to perform some calculations on numerous data sets. A loop can iterate through each data set, apply the same code to do calculations, and collect the results. 

**Automated Testing:** In software development, loop are invaluable for running numerous test cases. Loop can be used to test different inputs for your program and verify that it behaves as expected using the same code. 

In Bash scripting there are three types of loops that are commonly used to repeat a set of commands multiples times based on certain conditions. 

1. For 

2. While and 

3. Until 

## For Loop 

The for loop is used to iterate over a list of values or a range of numbers. It is useful when you know in advance how many times the loop is going to be executed. The **for** loop has two main forms. 

**1. List Form:** Iterates over a list of items. 

Here is a basic syntax 

![Basic Syntax](./img/13.%20Basic%20Syntax.png)

- **for:** This keyword initiates the loop signaling the start of a block of code that will repeat. 

- **item:** This is the variable that temporarily holds the value of each item in the list as the loop iterates. For each iteration of the loop, **item** takes on the value of the next item in the list, allowing the command inside the loop to act on this value. 

- **in:** The in keyword is followed by a list of items that the loop will iterate over. This list can be a series of values, an array or output of a command. The loop executes once for each item in this list. 

- **;:** A semicolon is used here to seperate the list of items from the do keyword that follows. If you place the do on the next line, the semicolon is optional. 

- **do** This keyword precedes the block of commands that will be executed for each item in the list. The block can contain one or multiple commands, and it can perform a wide range of actions, from simple echoes to complex conditional logic. 

- **done** This keyword marks the end of the loop. It signifies that all commands in the loop have been executed for each item in the list, and the loop is complete. 

![forloop List Form](./img/14.%20forloop%20List%20Form.png) 

![List Form Execution](./img/15.%20List%20Form%20Execution.png) 

In the example above: 

- The loop start with **for i in 1 2 3 4 5**, meaning the variable **i** will take each value in the list (1, 2, 3, 4, 5) in turn. 

- For each value of **i,** the loop executes the commands between do and done. 

- The command **echo "Hello, World! This is message $i"** print a greeting along with the current value of i. Once i has taken each value in the list, the loop ends. 

The same code can be re-written using a range syntax. 

![Range Syntax](./img/16.%20Range%20Syntax.png) 

## Task for Me

1. Create a shell script for each types of for loop 

2. Insert the code in the file 

3. Set the correct permission for the scripts 

4. Execute the script and evaluate your experience. 

## Basic for loop with a list 

![for Loop List](./img/17.%20for%20Loop%20List.png)

![for Loop List Execution](./img/18.%20for%20Loop%20List%20Execution.png) 

## Basic for loop range (Curl with bracket) 

![for Loop Range](./img/19.%20for%20Loop%20Range.png) 

![for Loop Range Execution](./img/20.for%20Loop%20Range%20Execution.png) 

2. **C-style Form:** This style allows to specify initializer, condition, and increment/decrement expression. It is based on the same syntax used in doing a **for** loop in **C Programming**  

![for Loop C-style](./img/21.%20for%20Loop%20C-style.png) 

![for Loop C-style Execution](./img/22.%20for%20Loop%20C-style%20Execution.png) 

## Break Down the Syntax 

- "for (( ... ));" This is the syntax that starts a C-dtyle for loop in Bash. It's distinguished from the list form by double parentheses "(( ... ))", which enclose the three parts of the loops: "initialization, condition, and increment/decrement". 

- "i=0:" This is the initialization part. Before the loop starts, "i" is set to "0". This typically sets up a counter variable to start from a certain value. In this case, i start from 0. 

- "i<5:" This is the condition for the loop to continue running. After each iteration of the loop, Bash checks this condition. If it's true, the loop continues; if it's false, the loop will ends. Here , the loop willcontinue as long as **i** is less than "5". 

- "do ... done": Encloses the commands to be executed in each iteration of the loop. Here the command inside the loop is **echo "Number $i**, which prints the current value of "i" to the console. 

## How It Works 

- Initialization: Before the first iteration, "i" is set to "0". 

    - If condition is true, Bash executes the commands inside the loop.

    - If the condition is false, Bash exit the loop.

- Execute Commands: The command(s) inside the "do ... done" block are executed. In this case, it prints the current value of "i". 

- "Increment:" After executing the commands, "i" is incremented by "1" using the syntax "i++". 

- **Repeat:** Steps 2 through 4 are repeated until the condition in step 2 is false.

**Lets take a Walkthrough to further expand on your understanding** 

- "First Iteration:" i=0, condition 0<5 is true, prints "Number 0", increments i to 1.

- "Second Iteration:" i=1, condition 1<5 is true, prints "Number 1", increments i to 2.

- "Continues iteration:" ...

- "Fifth Iteration:" i=4, condition 4<5 is true, prints "Number 4", increments i to 5.

- "Sixth Check:" i=5, condition 5<5 is false, loop ends.

This C-style for loop is powerful for numerical iterations, especially when you need precise control over the start, end, and step size of the loop.

## For loop reading from a file 

![for Loop Reading File](./img/23.%20for%20Loop%20Reading%20File.png) 

![for Loop Reading File Executed](./img/24.%20for%20Loop%20Reading%20File%20Executed.png) 

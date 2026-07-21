# BUG: Added the missing quotation mark to fix the SyntaxError.
print("Welcome to the Bug Hunt!")

name = input("What is your name? ")

# BUG: Changed the string to an f-string so the variable 'name' is displayed.
print(f"Nice to meet you, {name}")

age = input("How old are you? ")

# BUG: Converted age to an integer before adding 1, then converted the result back to a string for printing.
print("Next year you will be " + str(int(age) + 1))
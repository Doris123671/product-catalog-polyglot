# Name Splitter & Greeter

# Ask the user for their full name
full_name = input("Enter your full name: ")

# Split the name into separate words
name_parts = full_name.split()

# Check if the user entered at least two names
if len(name_parts) >= 2:
    print(f"Hello, {name_parts[0]}! Welcome.")
else:
    print("Please enter your full name (first and last name).")
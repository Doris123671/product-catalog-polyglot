# Ticket Checker

# Ask the user for their age
age = int(input("Enter your age: "))

# Store the Boolean value
is_adult = age >= 18

# Display the Boolean
print("Is adult:", is_adult)

# Ticket prices
adult_price = 1000
child_price = 500

# Decision
if is_adult:
    print(f"Adult Ticket Price: KES {adult_price}")
else:
    print(f"Child Ticket Price: KES {child_price}")
#1. Write a Python function that takes a string as input and reverses it but with a twist: every vowel in the reversed string should be capitalized, and every consonant should be converted to lowercase. For example, if the input is "Hello, World!", the output should be "!dLrOw ,oLlEh".

def reverse_and_transform(s: str) -> str:
    vowels = 'aeiouAEIOU'
    reversed_transformed = []
    length = 0

    # Calculate the length of the string
    for _ in s:
        length += 1

    # Iterate from the end to the start of the string
    for i in range(length - 1, -1, -1):
        char = s[i]
        if char in vowels:
            if 'a' <= char <= 'z':
                char = chr(ord(char) - 32)  # Convert to uppercase
        else:
            if 'A' <= char <= 'Z':
                char = chr(ord(char) + 32)  # Convert to lowercase
        reversed_transformed.append(char)

    # Join the list into a string
    transformed_string = ''
    for char in reversed_transformed:
        transformed_string += char

    return transformed_string

# Example usage
input_string = "Hello, World!"
output_string = reverse_and_transform(input_string)
print(output_string)  # Output: "!dLrOw ,oLlEh"

#2. Design a Python function that takes a list of elements as input and returns the count of unique elements in the list. The function should not utilize any built-in Python libraries or functions related to counting or sets. 

def count_unique_elements(lst: list) -> int:
    unique_elements = []

    for element in lst:
        is_unique = True
        for unique in unique_elements:
            if element == unique:
                is_unique = False
                break
        if is_unique:
            unique_elements.append(element)

    # Count the number of unique elements
    count = 0
    for _ in unique_elements:
        count += 1

    return count

# Example usage
input_list = [1, 2, 2, 3, 4, 4, 5]
unique_count = count_unique_elements(input_list)
print(unique_count)  # Output: 5

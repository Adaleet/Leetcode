'''Given an array of integers, write an algorithm to find the two numbers that add up to a specific target sum. 
You should return the indices of the two numbers. Assume there is exactly one solution, and you may not use the 
same element twice. '''



def two_sum(nums, target):
    # Create a hash map to store the value and its index
    hashmap = {}
    
    # Loop through the array
    for i, num in enumerate(nums):
        # Calculate the difference between the target and the current element
        complement = target - num
        
        # Check if the complement exists in the hash map
        if complement in hashmap:
            return [hashmap[complement], i]  # Return the indices of the two numbers
        
        # If not found, store the current number and its index
        hashmap[num] = i
    
    # If no solution is found (though the problem guarantees one solution)
    return None

# Example usage
nums = [2, 7, 11, 15]
target = 9
print(two_sum(nums, target))  # Output: [0, 1] (2 + 7 = 9)





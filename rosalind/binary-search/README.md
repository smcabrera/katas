Binary search is the ultimate divide and conquer algorithm. To find a key $k$ in a large file containing keys 1..n in sorted order, we first compare $k$ with A n/2 and depending on the result we recurse either on the first half of the file, A 1..n/2, or on the second half, A n/2+1..n. The recurrence now is $T(n)=T(n/2)+O(1). Plugging into the master theorem we get the familiar solution: a running time of just O(log n)

# The problem

The problem is to find a given set of keys in a given array.

Given: Two positive integers n and m, a sorted array 1 - n of integers from and a list of m integers 

Return: For each k output an index j such that that array at index j = k or -1 if there is no such index.

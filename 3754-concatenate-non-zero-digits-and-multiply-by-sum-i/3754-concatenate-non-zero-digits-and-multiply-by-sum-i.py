class Solution:
    def sumAndMultiply(self, n: int) -> int:
        x = []
        for num in str(n):
            if num != '0':
                x.append(num)
        if x == []:
            return 0
        x = ''.join(x)
        sums = 0
        for i in x:
            sums += int(i)
        result = int(x)*sums
        return result 
        
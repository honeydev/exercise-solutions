# Implement strStr().

# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

# Example 1:

# Input: haystack = "hello", needle = "ll"
# Output: 2

# Example 2:

# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
# https://leetcode.com/problems/implement-strstr/description/

class Solution:
    def strStr(self, haystack, needle):
        """
        :type haystack: str
        :type needle: str
        :rtype: int
        """
        NOT_FINDED_VALUE = -1
        HAYSTACK_MAX_INDEX = len(haystack) - 1
        HAYSTACK_LEN = len(haystack)
        NEEDLE_MAX_INDEX = len(needle) - 1
        NEEDLE_LEN = len(needle)
        needleIndex = 0
        guessIndex = NOT_FINDED_VALUE
        haystackIndex = 0
        
        def substrIsFinded(needleIndex, needleLen):
          return needleIndex == needleLen
          
        def substrNotFulled(needleIndex, needleMaxIndex):
          return needleIndex <= needleMaxIndex
          
        def guessIndexInNotFindedPosition(guessIndex):
          return guessIndex == -1
    
        if needle == '' or haystack == needle:
          return 0
          
        if NEEDLE_LEN > HAYSTACK_LEN:
          return NOT_FINDED_VALUE
          
        while (haystackIndex < HAYSTACK_LEN):

          currentHaystackWord = haystack[haystackIndex]
          currentNeedleWord = needle[needleIndex]
            
          if currentHaystackWord is currentNeedleWord:

            needleIndex += 1
            if guessIndexInNotFindedPosition(guessIndex):
              guessIndex = haystackIndex
            if substrIsFinded(needleIndex, NEEDLE_LEN):
              break
          elif currentHaystackWord != currentNeedleWord:
            if not guessIndexInNotFindedPosition(guessIndex):
              haystackIndex = guessIndex
              guessIndex = NOT_FINDED_VALUE;
              needleIndex = 0
          
          haystackIndex += 1

        if substrNotFulled(needleIndex, NEEDLE_MAX_INDEX):
          return NOT_FINDED_VALUE
          
        return guessIndex

class SolutionTest:
  solution = None
  
  def __init__(self):
    self.solution = Solution()
  
  def test(self):
    self.equal(3, self.solution.strStr('privet', 'vet'))
    self.equal(0, self.solution.strStr('privet', 'pri'))
    self.equal(0, self.solution.strStr('privet', 'privet'))
    self.equal(0, self.solution.strStr('privet', ''))
    self.equal(0, self.solution.strStr('privet', ''))
    self.equal(-1, self.solution.strStr('privet', 'avc'))
    self.equal(2, self.solution.strStr('privet', 'i'))
    self.equal(0, self.solution.strStr('a', 'a'))
    self.equal(0, self.solution.strStr('', ''))
    self.equal(-1, self.solution.strStr('aaa', 'aaaa'))
    self.equal(8, self.solution.strStr('priketprivet', 'ivet'))
    self.equal(4, self.solution.strStr("mississippi", "issip"))
    self.equal(9, self.solution.strStr("mississippi", "pi"))
    self.equal(-1, self.solution.strStr("mississippi", "sippj"))
    self.equal(-1, self.solution.strStr("mississippi", "issipi"))
    self.equal(-1, self.solution.strStr("mississippi", "sippia"))
  def equal(self, a1, a2):
    if (a1 != a2):
      print('Error expected', a1, 'not equal ', a2)
    else:
      print('done ', a1, a2)

solutionTest = SolutionTest()
solutionTest.test()

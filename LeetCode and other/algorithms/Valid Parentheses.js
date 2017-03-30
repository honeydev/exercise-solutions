/**
	Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
	The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not
	https://leetcode.com/problems/valid-parentheses/#/description	
*/

/**
 * @param {string} s
 * @return {boolean}
 */
 
var isValid = function(s) {
    var pattern = ['(', '{', '['];
    var patternMirror = [')', '}', ']'];
    var unclosedIndex = [];
    var flags = {
      closedScobe: false
    };
    for (var j = 0; j < s.length; j++) {
      //если разрешена открытая скобка добавляем любую открытую скобку
      if (pattern.indexOf(s[j]) !== -1) {
        unclosedIndex.push(pattern.indexOf(s[j]));
        flags.closedScobe = true;
        continue;
      }
      //любая последующая закрывающая скобка будет корректна только если ее индекс в массиве равен последнему элементу
      //в массиве незакрытых скобок 
      if (flags.closedScobe && patternMirror.indexOf(s[j]) !== -1) {
        if (patternMirror.indexOf(s[j]) !== unclosedIndex[unclosedIndex.length - 1]) {
          return false;
        }
        unclosedIndex.splice(unclosedIndex.length - 1, 1);
         if (unclosedIndex.length == 0) {
          flags.closedScobe = false;
        }
        continue;
      }
      return false;
    }
	//если осталась незакрытая скобка
    if (unclosedIndex.length > 0) {
      return false;
    }
    return true;
};

//не самое лаконичное решение вышло ^.^

/**
Roman to Integer
Given a roman numeral, convert it to an integer.
Input is guaranteed to be within the range from 1 to 3999.
https://leetcode.com/problems/roman-to-integer/#/description
*/

/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(string) {
    var pattern = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    }
    var arabianArr = (function(s) {
      romanArr = string.split('');
      numArr = [];
      console.log(romanArr);
      for (var j = 0; j < romanArr.length; j++) {
        if (pattern[romanArr[j]] !== undefined) {
          numArr.push(pattern[romanArr[j]]);
        }
      }
      return numArr;
    })();
    var result = (function() {
      var result = 0;
      for (var j = 0; j < arabianArr.length; j++) {
        if (arabianArr[j+1] > arabianArr[j]) {
          result += arabianArr[j+1] - arabianArr[j];
          j++;
          continue;
        }
        result += arabianArr[j];
	  }
      return result;
    })();
    return result;
};

//"DCXXI" = 500 100 10 10 1 = 621
//"DCXIX" = 500 100 10 1 10 9 = 619
//Пусть текущее значение a, если следующее значение в массиве - n больше a, следовательно это одно число равное n - a
//Добавляем разность к текущему результату, инкремент к счетчику, пропускаем итерацию
//Если не больше просто прибавляем к результату
//Возвращаем результат
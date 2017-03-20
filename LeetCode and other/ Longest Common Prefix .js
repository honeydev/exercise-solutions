https://leetcode.com/problems/longest-common-prefix/#/description
Write a function to find the longest common prefix string amongst an array of strings. 

/**
 * @param {strings[]} strs
 * @return {string}
 */
var longestCommonPrefix = function(strings) {
  if (strings.length === 0) {
    return '';
  }
  //Идем циклом по первому слову
  //Префикс изначально пустая строка
  //Ходим циклом по массиву ищем в каждой строке префикс + текущая буква в 1 слове
  //Если буквы нет или индекс вхождения подстроки не равен индексу в исходной строке 
  //Буква не подходит самый длинный префикс найден возвращаем его
  var prefix = '';
  for (var j = 0; j < strings[0].length; j++) {
    if (stringInArray(strings, prefix+strings[0][j], j)) {
      prefix += strings[0][j];
    } else {
      break;
    }
  }
  return prefix;
  function stringInArray(arr, str, index) {
    for (var j = 0; j < arr.length; j++) {
      if (arr[j].indexOf(str) !== 0) {
        return false;
      }
    }
    return true;
  }
};

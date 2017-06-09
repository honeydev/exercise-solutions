

/**
 * @param число арабскими цифрами
 * 
 */
var intToRoman = function(num) {
  var num = String(num);
  var numCategory = num.length;
  var result = '';
  var pattern = {
    1: {
      'min': 'I',
      'max': 'V'
    },
    2: {
      'min': 'X',
      'max': 'L',
    },
    3: {
      'min': 'C',
      'max': 'D'
    },
    4: {
      'min': 'M'
    } 
  };
  
  var categorizer = function(category, num) {
    var answer = '';
    if (num === 9) {
      answer += pattern[category]['min'] + pattern[category+1]['min'];
    } else if (num < 9 && num > 4) {
      answer += pattern[category]['max'];
      for (var i = 0; i < num - 5; i++) {
        answer += pattern[category]['min'];
      }
    } else if (num === 4) {
      answer += pattern[category]['min'] + pattern[category]['max'];
    } else if (num < 4) {
      for (var i = 0; i < num; i++) {
        answer += pattern[category]['min'];
      }
    }
    return answer;
  }
  
  var parser = function() {
    while (num.length > 0) {
      var numInCategory = Number(num[0]);
      var numCategory = num.length;
      
      if (numCategory === 4) {
        result += categorizer(numCategory, numInCategory);
      } else if (numCategory === 3) {
          result += categorizer(numCategory, numInCategory)
      } else if (numCategory === 2) {
        result += categorizer(numCategory, numInCategory);
      } else if (numCategory === 1) {
        result += categorizer(numCategory, numInCategory);
      }
      num = num.slice(1, num.length);
    }
  }
  parser();
  return result;
};

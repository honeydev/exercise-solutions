// Не уверен что до конца понял суть задания, но вот. Объединяет два односвязных списка с сортировкой по возрастанию.
let l1 = {
  value: 1,
  next: {
    value: 3,
    next: null
  }
};

let l2 = {
  value: 2,
  next: {
    value: 4,
    next: null
  }
};

function mergeLists(l1, l2) {
 
  
  let extractListValue = function(currentNode) {
  
    let unsortedArray = [];
    
    while (true) {
      
      if (currentNode !== null) {
        unsortedArray.push(currentNode.value);
        currentNode = currentNode.next;
      } else {
        break;
      }
    }
    
    return unsortedArray;
  }
  
  let mergedList = extractListValue(l1).concat(extractListValue(l2));
  mergedList.sort(function (a, b) {
    if (a > b) {
      return 1;
    }
  });
  
  let createOneLinkedist = function(list) {
    let oneLinkedList = {};
    let currentNode = oneLinkedList;
    for (let i = 0; i < list.length; i++) {
      currentNode.value = list[i];
      if (i + 1 == list.length) {
        currentNode.next = null;
        break;
      }
      currentNode.next = {};
      currentNode = currentNode.next;
    }
    return oneLinkedList;
  };
  
  return createOneLinkedist(mergedList);
};

let mergedList = mergeLists(l1, l2);

console.log(mergedList);

// { value: 1, next: { value: 2, next: { value: 3, next: [Object] } } }

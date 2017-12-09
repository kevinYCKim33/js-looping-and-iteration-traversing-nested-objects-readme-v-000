function deepIteratorObjAndArrVersion(target) {
  if (typeof target === 'object') {
    for (const key in target) {
      deepIterator(target[key]);
    }
  } else {
    console.log(target);
  }
}

function deepIteratorArrayOnlyVersion(target) {
  for (let i = 0; i < target.length; i++) {
    if (typeof target[i] === 'object') {
      deepIteratorArrayOnlyVersion(target[i]);
    } else {
      console.log(target[i]);
    }
  }
}

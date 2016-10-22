var MergeSort = function () {
    this.unsortedArray = [];
};

MergeProto = MergeSort.prototype;

MergeProto.startSort = function (sortArray) {
    this.unsortedArray = sortArray;
    this.printResults();
    this.sort(sortArray, 0, sortArray.length-1);
    this.printResults();
}

MergeProto.printResults = function () {
     this.unsortedArray.forEach(function (i) {
	console.log(i);
    });
}

MergeProto.sort = function (list, lo, hi) {
    if(hi - lo <= 1)
	return list;
    var middle = Math.floor((lo+hi)/2);
    this.sort(list, lo, middle)
    this.sort(list, middle + 1, hi) 
    this.merge(list, lo, middle, hi)
}


MergeProto.merge = function (array, lo, middle, hi) {
    var leftArr = [];
    var rightArr = [];

    for(var i = lo; i <= middle; i++){
	leftArr.push(array[i]);
    }

    for(var i = middle+1; i <= hi; i++){
	rightArr.push(array[i]);
    }

    var index = lo;

    while(leftArr.length >0 && rightArr.length > 0){
	if(leftArr[0] <= rightArr[0])
	    array[index] = leftArr.shift();
	else
	    array[index] = rightArr.shift();

	index++;
    }

    while(leftArr.length >0)
    {
	array[index++] = leftArr.shift(); 
    }

    while(rightArr.length >0)
    {
	array[index++] = rightArr.shift(); 
    }

}

var Ms = new MergeSort();
Ms.startSort([1,7,3]);

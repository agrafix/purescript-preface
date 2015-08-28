"use strict";

// module Array

exports.map = function(f) {
    return function(arr) {
        var result = [];
        for (var i = 0; i < arr.length; i++) {
            result[i] = f(arr[i]);
        }
        return result;
    };
};

exports.filter = function(f) {
    return function(arr) {
        var result = [];
        for (var i = 0; i < arr.length; i++) {
            if (f(arr[i])) {
                result.push(arr[i]);
            }
        }
        return result;
    };
};

exports.fold = function(f) {
    return function(b) {
        return function(arr) {
            var result = b;
            for (var i = 0; i < arr.length; i++) {
                result = f(result)(arr[i]);
            }
            return result;
        }
    };
};

exports.concat = function(arr1) {
    return function(arr2) {
        return arr1.concat(arr2);
    };
};

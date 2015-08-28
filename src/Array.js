"use strict";

// module Array

exports.map = function(f) {
    return function(arr) {
        var result = [];
        for (var i = 0; i < arr.length; i++) {
            result[i] = f(arr[i]);
        }
        return result;
    }
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
    }
};
"use strict";

// module Preface

/** Arrays **************************************************************/

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

/** Tasks **************************************************************/

exports.pure = function(a) {
    return function() {
        return a;
    };
};

exports.bind = function(t) {
    return function(f) {
        return function() {
            var a = t();
            return f(a)();
        };
    };
};

exports.log = function(s) {
    return function() {
        console.log(s);
        return {};
    };
};

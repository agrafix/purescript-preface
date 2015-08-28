"use strict";

// module Boolean

exports.and = function(x) {
    return function(y) {
        return x && y;
    };
};

exports.or = function(x) {
    return function(y) {
        return x || y;
    };
};

exports.not = function(x) {
    return !x;
};

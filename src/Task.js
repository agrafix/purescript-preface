"use strict";

// module Task

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


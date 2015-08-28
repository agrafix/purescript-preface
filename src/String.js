"use strict";

// module String

exports.append = function(x) {
    return function(y) {
        return x + y;
    };
};

"use strict";

// module Number

exports.add = function (x) {
  return function (y) {
    return x + y;
  };
};

exports.subtract = function (x) {
  return function (y) {
    return x - y;
  };
};

exports.multiply = function (x) {
  return function (y) {
    return x * y;
  };
};

exports.divide = function (x) {
  return function (y) {
    return x / y;
  };
};

exports.remainder = function (x) {
  return function (y) {
    return x % y;
  };
};

exports.max = function (x) {
  return function (y) {
    return Math.max(x, y);
  };
};

exports.min = function (x) {
  return function (y) {
    return Math.min(x, y);
  };
};

exports.lt = function (x) {
  return function (y) {
    return x < y;
  };
};

exports.lte = function (x) {
  return function (y) {
    return x <= y;
  };
};

exports.gt = function (x) {
  return function (y) {
    return x > y;
  };
};

exports.gte = function (x) {
  return function (y) {
    return x >= y;
  };
};
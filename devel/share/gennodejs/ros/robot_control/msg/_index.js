
"use strict";

let rigid = require('./rigid.js');
let contact = require('./contact.js');
let accelerometr = require('./accelerometr.js');
let newtactile = require('./newtactile.js');
let state = require('./state.js');
let tactile = require('./tactile.js');
let coord = require('./coord.js');
let fsrInput = require('./fsrInput.js');

module.exports = {
  rigid: rigid,
  contact: contact,
  accelerometr: accelerometr,
  newtactile: newtactile,
  state: state,
  tactile: tactile,
  coord: coord,
  fsrInput: fsrInput,
};

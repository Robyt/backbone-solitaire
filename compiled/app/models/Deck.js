// Generated by CoffeeScript 1.6.2
(function() {
  var _ref,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  window.Deck = (function(_super) {
    __extends(Deck, _super);

    function Deck() {
      _ref = Deck.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    Deck.prototype.model = Card;

    Deck.prototype.initialize = function() {
      return this.add(_(_.range(1, 53)).shuffle().map(function(card) {
        return new Card({
          rank: card % 13,
          suit: Math.floor((card / 13) % 4)
        });
      }));
    };

    Deck.prototype.dealGameBoard = function() {
      var columnStorage, i, j, _results;

      columnStorage = [];
      i = 0;
      _results = [];
      while (i < 7) {
        columnStorage[i] = [];
        j = 0;
        while (j <= i) {
          columnStorage[i].push(this.pop());
          j++;
        }
        console.log(columnStorage[i]);
        i++;
        _results.push(new GameBoard(columnStorage, this));
      }
      return _results;
    };

    Deck.prototype.dealPile = function() {};

    return Deck;

  })(Backbone.Collection);

}).call(this);

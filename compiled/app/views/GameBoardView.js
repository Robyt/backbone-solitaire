// Generated by CoffeeScript 1.6.2
(function() {
  var _ref,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  window.GameBoardView = (function(_super) {
    __extends(GameBoardView, _super);

    function GameBoardView() {
      _ref = GameBoardView.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    GameBoardView.prototype.className = 'game-board';

    GameBoardView.prototype.template = _.template('');

    GameBoardView.prototype.initialize = function() {
      return this.render();
    };

    GameBoardView.prototype.render = function() {
      this.$el.children().detach();
      this.$el.html(this.template(this.collection));
      return this.$el.append(this.collection.map(function(column) {
        return new ColumnView({
          collection: column
        }).$el;
      }));
    };

    return GameBoardView;

  })(Backbone.View);

}).call(this);

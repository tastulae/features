console.log('hi');

module.exports = function() {
    this.World = function(callback) {
        callback();
    }
}
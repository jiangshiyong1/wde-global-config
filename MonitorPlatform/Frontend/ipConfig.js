exports.install = function (Vue, options) {
  Vue.prototype.getServerIp = function () {
    var serverIp = 'http://10.61.1.27:9000'
    return serverIp
  }
  Vue.prototype.getGenerateIp = function () {
    var generateIp = 'http://10.61.1.27:8090'
    return generateIp
  }
}

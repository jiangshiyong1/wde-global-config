exports.install = function (Vue, options) {
  Vue.prototype.getServerIp = function () {
    // var serverIp = 'http://10.60.1.146:9999'
    var serverIp = 'http://172.17.0.63:9000'
    return serverIp
  }
  Vue.prototype.getGenerateIp = function () {
    var generateIp = 'http://172.17.0.60:8080'
    // var generateIp = 'http://10.60.1.146:8090'
    return generateIp
  }
}

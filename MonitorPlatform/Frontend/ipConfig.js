exports.install = function (Vue, options) {
  Vue.prototype.getServerIp = function () {
    var serverIp = 'http://monitor.wde.ict.ac.cn:9000'
    return serverIp
  }
  Vue.prototype.getGenerateIp = function () {
    var generateIp = 'http://scheduler.wde.ict.ac.cn:8080'
    return generateIp
  }
}

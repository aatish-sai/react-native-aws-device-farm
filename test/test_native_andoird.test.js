var expect = require('chai').expect;

var wd = require('wd'),
    driver = wd.promiseChainRemote({
        host: '127.0.0.1',
        port: 4723
    });

var assert = require('assert');
describe('AWSDeviceFarmReferenceAppTest', function () {
    
    before(function() {
        this.timeout(300 * 1000);
        return driver.init();
        });

        after(function() {
            console.log("Quitting");
        });
})

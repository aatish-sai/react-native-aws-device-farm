var expect = require('chai').expect;

var wd = require('wd'),
    driver = wd.promiseChainRemote({
        host: 'localhost',
        port: 4723
    });

var assert = require('assert');
describe('AWSDeviceFarmReferenceAppTest', function() {

    before(function() {
        this.timeout(300 * 1000);
        return driver.init();
    });

    after(function() {
        console.log("Quitting");
    });

    it('test_app_is_loaded', async function() {
        const element = await driver.elementById('me.aatish.reactnativeawsdevicefarm:id/action_bar_root')
        expect(element).to.exist;
    });
})

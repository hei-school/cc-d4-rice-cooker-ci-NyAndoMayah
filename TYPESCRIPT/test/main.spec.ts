import {displayMenu} from "../src/main";
import * as sinon from 'sinon';
import {expect} from "chai";


describe('displayMenu', () => {
    it('should display the menu', () => {
        const logStub = sinon.stub(console, 'log');

        displayMenu();

        expect(logStub.calledWith('\nWelcome to the Rice Cooker Simulator!')).to.be.true;
        expect(logStub.calledWith('1. Add rice')).to.be.true;
        expect(logStub.calledWith('2. Cook rice')).to.be.true;
        expect(logStub.calledWith('3. Steam rice')).to.be.true;
        expect(logStub.calledWith('4. Keep warm')).to.be.true;
        expect(logStub.calledWith('5. Remove rice')).to.be.true;
        expect(logStub.calledWith('6. Quit')).to.be.true;

        logStub.restore();
    });
});


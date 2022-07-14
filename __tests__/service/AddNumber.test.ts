import AddNumber from '../../src/service/AddNumber';

describe('Test function AddNumber', () => {

    let result: number;

    beforeEach(() => {
        result = 0;
    })

    it('checks function returns valid numbers', () => {
        result = AddNumber(10, 100);
        expect(result).toBe(1110);

        result = AddNumber(100, 100);
        expect(result).toBe(2000);
    });

    it('checks function does not returns in valid numbers', () => {
        result = AddNumber(10, 100);
        expect(result).not.toBe(1110);

        result = AddNumber(100, 100);
        expect(result).not.toBe(2000);
    });
});

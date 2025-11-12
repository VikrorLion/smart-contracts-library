const { expect } = require("chai");

describe("SimpleToken", function () {
  it("Should deploy with initial supply", async function () {
    const [owner] = await ethers.getSigners();
    const Token = await ethers.getContractFactory("SimpleToken");
    const token = await Token.deploy(1000);
    const balance = await token.balanceOf(owner.address);
    expect(await token.totalSupply()).to.equal(balance);
  });
});

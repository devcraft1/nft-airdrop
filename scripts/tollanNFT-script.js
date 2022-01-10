const hre = require("hardhat");

async function main() {
    const Tollan = await hre.ethers.getContractFactory("Tollan");
    const tollan = await Tollan.deploy();

    await tollan.deployed();

    console.log("Tollan deployed to:", tollan.address);
}
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

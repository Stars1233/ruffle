import { loadJsAPI, playAndMonitor } from "../utils.js";
import { use } from "chai";
import chaiHtml from "chai-html";
import { Player } from "ruffle-core";

use(chaiHtml);

describe("RufflePlayer.load", () => {
    loadJsAPI();

    it("loads and plays a URL", async () => {
        const player = await browser.$("<ruffle-player>");
        await browser.execute(async (playerElement) => {
            const player = playerElement as Player.PlayerElement;
            await player.ruffle().load("/test_assets/example.swf");
        }, player);
        await playAndMonitor(browser, player);
    });
});

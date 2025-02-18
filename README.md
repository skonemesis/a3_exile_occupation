# Exile Occupation (a3_exile_occupation)

**Version:** v72  
**Compatibility:** Arma 3 v2.x+, Exile Mod v1.0.4 "Pineapple"

## Overview

Exile Occupation is an AI spawner and monitoring system designed to work alongside Defent's Mission System (DMS) in Arma 3 Exile Mod. It enhances gameplay by introducing roaming AI units, dynamic missions, and various in-game events to create a more immersive and challenging environment.

## Features

- **Roaming AI Patrols:** Land, air, and sea AI patrols engage players dynamically.
- **Dynamic Missions:** Additional missions complementing DMS, offering varied challenges.
- **AI Roadblocks & Static Encounters:** Strategically placed AI roadblocks at key chokepoints for increased challenge.
- **Customizable Settings:** Extensive configuration options to tailor AI behavior, spawn rates, and mission parameters.
- **Integration with DMS:** Seamless operation alongside DMS for enriched mission experiences.
- **Enhanced Debug Mode:** Improved logging, AI spawn visibility, and faster test cycles.
- **Optimized AI Relations:** Balanced faction hostility settings for a more dynamic AI ecosystem.

## Installation

1. **Download the Addon:**
   - Obtain the latest version of `a3_exile_occupation.pbo`.

2. **Install the Addon:**
   - Place the `a3_exile_occupation.pbo` file into your `@ExileServer/addons` directory.

3. **Configure the Addon:**
   - Extract the contents of the `source` folder from the repository.
   - Modify the `config.sqf` file to adjust settings as desired.
   - Repack the folder into a `.pbo` file using a PBO packing tool (e.g., PBO Manager 1.4b).

4. **Ensure DMS is Installed:**
   - Exile Occupation requires DMS to function correctly. Download and install DMS from the [Exile Mod forums](http://www.exilemod.com/topic/61-dms-defents-mission-system/).

## Configuration

### **Modifying Settings**
- **AI Roadblocks:** Defined in `SC_staticBandits` within `config.sqf`. Adjust spawn locations, AI count, and patrol radius.
- **AI Spawn Rates:** Modify `SC_maxAIcount` and `SC_randomSpawnChance` to control AI density.
- **Debugging & Logs:** Enable `SC_debug` mode for additional logging, map markers, and fast AI spawns.
- **Faction Relations:** Adjust AI hostility with `setFriend` settings in `config.sqf`.

### **Integration with Other Mods**
- Compatible with **DMS**, **A3XAI**, and **Exile Extended Missions**.
- Modify `config.sqf` for seamless integration with other AI systems.

## AI Roadblocks

- **Strategic Chokepoints:** AI-controlled roadblocks are placed at key high-traffic areas on **ChernarusRedux**.
- **Dynamic Enemy Presence:** Randomized AI count, search radius, and patrol behavior for varied encounters.
- **Tactical Gameplay:** Roadblocks include fortified positions, vehicle obstructions, and AI reinforcements.

## License

This project is licensed under the **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License**. By using or modifying this work, you agree to adhere to the terms of this license.

## Credits

- **Original Author:** [second_coming](https://github.com/secondcoming/a3_exile_occupation)
- **Contributors:** [FPS]kuplion, [skonemesis], and various community members for updates and fixes.

## Support & Contributions

- **Issues & Bugs:** Report issues via the [GitHub Issues](https://github.com/skonemesis/a3_exile_occupation/issues) page.
- **Contributions:** Fork the repository, make your changes, and submit a pull request for review.

For further assistance and community discussions, visit the [Exile Mod forums](http://www.exilemod.com/topic/12517-release-exile-occupation-roaming-ai).

---

Let me know if you need any refinements before committing! 🚀

//priority: 0
const normalConfig = {
    mode: 'normal',
    message: 'Valid modes are normal and expert.'
};
const expertConfig = {
    mode: 'expert',
    message: 'Valid modes are normal and expert.'
};

const configName = 'mode.json';
let config = json.read(configName);

if (!config || !config.mode) {
    json.write(configName, normalConfig);
    console.log(`Created new ${configName}`);
    config = normalConfig;
}
if (config.mode == 'none') {
    json.write(configName, normalConfig);
    config.mode = normalConfig.mode;
    console.log(`Overwrote ${configName}, because the mode 'none' was found. Valid modes are 'normal' and 'expert'.`);
}

let packMode = config.mode;

global.packmode = packMode;
global.isNormalMode = packMode == 'normal';
global.isExpertMode = packMode == 'expert';
const isNormalMode = packMode == 'normal';
const isExpertMode = packMode == 'expert';

console.log(`Current packmode is: ${global.packmode}`);


onEvent('server.custom_command', event => {
	if (event.server.isDedicated()) {
		event.player.tell("This command does not work on Servers, please edit the mode.json and do /reload to apply the changes!");
	}
	else {
		if (event.id == 'Expert') {
		  if (global.isNormalMode) {
			json.write(configName, expertConfig);
			event.player.tell("Switching Pack-Mode: Expert ...");
			event.player.tell("Note: game will freeze in the next few seconds");
			event.server.runCommandSilent(`reload`);
			event.player.tell("Done!");
		  } else {
			event.player.tell("Pack-Mode already set to Expert");
		  }
		}
		if (event.id == 'Normal') {
		  if (global.isExpertMode) {
			json.write(configName, normalConfig);
			event.player.tell("Switching Pack-Mode: Normal ...");
			event.player.tell("Note: game will freeze in the next few seconds");
			event.server.runCommandSilent(`reload`);
			event.player.tell("Done!");
		  } else {
			event.player.tell("Pack-Mode already set to Normal");
		  }
		}
	}
})

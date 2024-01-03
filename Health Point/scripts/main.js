import { world, DynamicPropertiesDefinition, MinecraftEntityTypes, system } from '@minecraft/server';

/**
 * Calculate the number of game ticks based on the given time duration.
 * @param {number} [milliseconds=1000] - The time duration in milliseconds (default is 1000).
 * @param {number} [gameTicksPerSecond=20] - Number of game ticks per second (default is 20).
 * @param {number} [millisecondsPerSecond=1000] - Number of milliseconds per second (default is 1000).
 * @returns {number} The calculated number of game ticks.
 * @example
 * ```js
 * calcGameTicks(1000) // => 20
 * calcGameTicks(500) // => 10
 * ```
 */
function calcGameTicks(milliseconds = 1000, gameTicksPerSecond = 20, millisecondsPerSecond = 1000) {
    return Math.floor(milliseconds / (millisecondsPerSecond / gameTicksPerSecond));
}

const SECTION_SIGN = '§';
// detail: https://minecraft.fandom.com/wiki/Formatting_codes
const colorCodes = {
    black: '0',
    darkBlue: '1',
    darkGreen: '2',
    darkAqua: '3',
    darkRed: '4',
    darkPurple: '5',
    gold: '6',
    gray: '7',
    darkGray: '8',
    blue: '9',
    green: 'a',
    aqua: 'b',
    red: 'c',
    lightPurple: 'd',
    yellow: 'e',
    white: 'f',
    minecoinGold: 'g',
    materialQuartz: 'h',
    materialIron: 'i',
    materialNetherite: 'j',
    obfuscated: 'k',
    bold: 'l',
    materialRedstone: 'm',
    materialCopper: 'n',
    italic: 'o',
    materialGold: 'p',
    materialEmerald: 'q',
    reset: 'r',
    materialDiamond: 's',
    materialLapis: 't',
    materialAmethyst: 'u'
};
for (const key in colorCodes) {
    const _key = key;
    colorCodes[_key] = SECTION_SIGN + colorCodes[_key];
}
function createStylizer(extend) {
    const handlerColor = (...args) => [...extend, ...args].join('');
    const proxy = new Proxy(handlerColor, {
        get(target, key, receiver) {
            const _key = key;
            const code = colorCodes[_key];
            if (code)
                return createStylizer([...extend, code]);
            return Reflect.get(target, key, receiver);
        }
    });
    return proxy;
}
/**
 * Text color
 * @example
 * ```js
 * color.green.italic.bold('Dedicated Ser') + color.reset('ver') + color.red.obfuscated('!!!')
 * // => '§a§o§lDedicated Ser§rver§c§k!!!'
 *
 * color.green.italic.bold('Dedicated Ser', color.reset('ver'), color.red.obfuscated('!!!'))
 * // => '§a§o§lDedicated Ser§rver§c§k!!!'
 * ```
 */
const color = createStylizer([]);

/* eslint-disable @typescript-eslint/no-explicit-any */
/**
 *
 * @author Lete114
 * @description Display the health status of the entity
 * @license GPL-2.0
 */
const PH = 'Hit Point';
world.afterEvents.worldInitialize.subscribe((e) => {
    const dpd = new DynamicPropertiesDefinition();
    dpd.defineBoolean(PH);
    e.propertyRegistry.registerEntityTypeDynamicProperties(dpd, MinecraftEntityTypes.player);
});
world.beforeEvents.chatSend.subscribe(async (e) => {
    const msg = e.message;
    if (/#PH#/i.test(msg)) {
        e.cancel = true;
        const player = e.sender;
        const ph = player.getDynamicProperty(PH);
        player.setDynamicProperty(PH, !ph);
    }
});
system.runInterval(() => {
    world.getAllPlayers().forEach((player) => {
        const entities = player.getEntitiesFromViewDirection();
        entities.forEach((entityRaycastHit) => {
            const entity = backwardsCompatible(entityRaycastHit, ['entity'], entityRaycastHit);
            showHealth(player, entity);
        });
    });
}, calcGameTicks(1000));
world.afterEvents.entityHurt.subscribe((e) => {
    showHealth(e.damageSource.damagingEntity, e.hurtEntity);
});
/**
 *
 * @param {Player} player
 * @param {Entity} entity
 */
function showHealth(player, entity) {
    try {
        const health = entity.getComponent('health');
        if (health && backwardsCompatible(health, ['effectiveMax', 'value'])) {
            const maxHealth = Math.floor(backwardsCompatible(health, ['effectiveMax', 'value']));
            const currentHealth = Math.floor(backwardsCompatible(health, ['currentValue', 'current']));
            const togglePHType = player.getDynamicProperty(PH);
            const PHNumber = `${color.green(maxHealth + '')}${color.reset('')} / ${color.red(currentHealth + '')}`;
            const PHBar = togglePHType ? PHNumber : getHeartBar(maxHealth, currentHealth);
            player.onScreenDisplay.setActionBar(maxHealth > 100 ? PHNumber : PHBar);
        }
    }
    catch (error) {
        /* eslint-disable no-console , @typescript-eslint/no-explicit-any*/
        console.log(error);
        console.log(error.message);
        console.log(error.stack);
        /* eslint-enable */
    }
}
/**
 *
 * @param {number} maxHealth
 * @param {number} currentHealth
 * @returns
 */
function getHeartBar(maxHealth, currentHealth) {
    const heart = '\u2764';
    const currentHeart = color.red(heart.repeat(currentHealth));
    const injured = color.darkGray(heart.repeat(maxHealth - currentHealth));
    const text = currentHeart + injured;
    let result = '', _tmp = '';
    for (let i = 0; i < text.length; i++) {
        const char = text[i];
        _tmp += char;
        // Every 20 hearts for a row of blood
        const _reg = new RegExp(heart, 'g');
        if (_tmp.match(_reg)?.length === 20) {
            result += _tmp + '\n';
            // Clear to recount the next row of blood
            _tmp = '';
        }
        else if (i === text.length - 1) {
            // If the final 20 hearts are not met then directly splice
            result += _tmp;
        }
    }
    const reg = new RegExp(`${color.darkGray('')}$`);
    return result.replace(reg, '').trim();
}
// eslint-disable-next-line @typescript-eslint/no-explicit-any
function backwardsCompatible(obj, keys, 
// eslint-disable-next-line @typescript-eslint/no-explicit-any
defaultValue) {
    for (const key of keys) {
        if (key in obj)
            return obj[key];
    }
    return defaultValue;
}

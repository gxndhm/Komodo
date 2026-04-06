// Komodo Hub Security Services
// Implements AES-256 Encryption for sensitive GPS data

const crypto = require('crypto');

/**
 * Encrypts precise GPS coordinates before database insertion
 * Supporting Requirement: Protection of endangered species from poaching.
 */
function encryptLocation(data, secretKey) {
    const iv = crypto.randomBytes(16);
    const cipher = crypto.createCipheriv('aes-256-cbc', Buffer.from(secretKey), iv);
    let encrypted = cipher.update(data);
    encrypted = Buffer.concat([encrypted, cipher.final()]);
    return iv.toString('hex') + ':' + encrypted.toString('hex');
}

console.log("Security Module Loaded: AES-256 Ready.");

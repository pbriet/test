module.exports = {
  reporters: [
    'default',
    [ 'jest-junit', {
      outputDirectory: '/app',
      outputName: 'junit.xml',
    } ]
  ]
};
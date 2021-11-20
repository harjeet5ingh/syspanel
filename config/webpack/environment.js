const { environment } = require('@rails/webpacker')
const webpack = require("webpack");

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default'],
    // DataTable: 'datatables.net-bs5',
  }))

module.exports = environment